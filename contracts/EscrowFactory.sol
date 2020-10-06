pragma solidity 0.6.9;
// SPDX-License-Identifier: MIT
//authors : dexcrow Team
import "./Escrow.sol";

contract EscrowSetup {
    function init(address payable _sender, address payable _receiver, uint256 _amount, string memory _btcAddress, uint256 _lockTimestamp, uint256 _fee) public {}
}

contract Token {
    function transfer(address _to, uint256 _value) external returns (bool success) {}
    function balanceOf(address account) external view returns (uint256) {}
}


contract EscrowFactory {
    
    bytes contractBytecode = type(Escrow).creationCode; // replace this with the code of the escrow contract
    event EscrowCreated(address indexed sender, address indexed receiver, address escrow, bytes32 salt);
    address payable owner;
    uint256 public oracleFee;
    uint256 public factoryFee;
    address private linkToken;
    

    constructor() public {
        owner = msg.sender;
        linkToken = 0xa36085F69e2889c224210F603D836748e7dC0088;
        oracleFee = 0.1 * 10 ** 18; // 0.1 LINK
        factoryFee = 0.01 * 10 ** 18; // 0.01 ETH
    }

    function senderClaim(address payable _receiverAddress, uint256 _amount, string memory _btcAddress, uint256 _lockTimestamp) public payable {
        require(msg.value >= factoryFee, "low value");
        address addr;
        bytes memory code = contractBytecode;
        bytes32 newsalt = keccak256(abi.encode(msg.sender, _receiverAddress, _amount, _btcAddress, _lockTimestamp ));
        assembly {
          addr := create2(0, add(code, 0x20), mload(code), newsalt)
          if iszero(extcodesize(addr)) {
            revert(0, 0)
          }
        }
        
        Token token = Token(linkToken);
        token.transfer(addr, oracleFee);
        EscrowSetup escrow = EscrowSetup(addr);
        escrow.init(msg.sender, _receiverAddress, _amount, _btcAddress, _lockTimestamp, oracleFee);
        emit EscrowCreated(msg.sender, _receiverAddress, addr, newsalt);
    }
    
    function receiverClaim(address payable _senderAddress, uint256 _amount, string memory _btcAddress, uint256 _lockTimestamp) public payable {
        require(msg.value >= factoryFee, "low value");
        address addr;
        bytes memory code = contractBytecode;
        bytes32 newsalt = keccak256(abi.encode(_senderAddress, msg.sender, _amount, _btcAddress, _lockTimestamp ));
        assembly {
          addr := create2(0, add(code, 0x20), mload(code), newsalt)
          if iszero(extcodesize(addr)) {
            revert(0, 0)
          }
        }
        
        Token token = Token(linkToken);
        token.transfer(addr, oracleFee);
        EscrowSetup escrow = EscrowSetup(addr);
        escrow.init(_senderAddress, msg.sender, _amount, _btcAddress, _lockTimestamp, oracleFee);
        emit EscrowCreated(_senderAddress, msg.sender, addr, newsalt);
    }

    function withdrawETH() public onlyOwner{
        address factory = address(this);
        require(factory.balance != 0, "balance is zero"); //save gas cost
        /** mitigation against reentrancy attacks 
         * see https://consensys.github.io/smart-contract-best-practices/known_attacks/#reentrancy-on-a-single-function
        */
        (bool success,) = owner.call {
            value: address(this).balance
        }("");
        require(success, "withdrawal failed");
    }
    
    function withdrawToken(address _token) public onlyOwner {
        address factory = address(this);
        Token token = Token(_token);
        token.transfer(msg.sender, token.balanceOf(factory));
        /** mitigation agaisnt Bad ERC20 implementartions 
         * see https://gist.github.com/Dexaran/ddb3e89fe64bf2e06ed15fbd5679bd20#erc20-token-standard-bug-explanation 
        */
        require(token.transfer(owner, token.balanceOf(factory)), "token transfer failed");
    }
    
    function destroy() public onlyOwner{
        selfdestruct(owner);
    }

    function setOracleFee(uint256 _newOracleFee) public onlyOwner{
        oracleFee = _newOracleFee;
    }

    function setFactoryFee(uint256 _newFactoryFee) public onlyOwner {
        factoryFee = _newFactoryFee;
    }
    
    modifier onlyOwner() {
        require(owner == msg.sender, ": caller is not the owner");
        _;
    }
 
}