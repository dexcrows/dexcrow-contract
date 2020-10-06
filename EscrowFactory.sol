

// SPDX-License-Identifier: MIT
//authors : dexcrow Team

pragma solidity 0.7.0
import 'https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/master/contracts/utils/ReentrancyGuard.sol';



contract Escrow {
    function init(address payable _sender, address payable _receiver, uint256 _amount, string memory _btcAddress, uint256 _lockTimestamp, uint256 _fee) public {}
}

contract Token {
    function transfer(address _to, uint256 _value) external returns (bool success) {}
    function balanceOf(address account) external view returns (uint256) {}
}


contract EscrowFactory {
    
    bytes contractBytecode = hex"6080604052600160045534801561001557600080fd5b506100246100a560201b60201c565b732f90a6d021db21e1b2a077c5a37b3c7e75d15b7e600c60006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055507f3239666139616131336266313436383738386237636334613530306134356238600d8190555061018e565b61014873c89bd4e1632d3a43cb03aaad5262cbe4038bc57173ffffffffffffffffffffffffffffffffffffffff166338cc48316040518163ffffffff1660e01b815260040160206040518083038186803b15801561010257600080fd5b505afa158015610116573d6000803e3d6000fd5b505050506040513d602081101561012c57600080fd5b810190808051906020019092919050505061014a60201b60201c565b565b80600260006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050565b6118c5806200019e6000396000f3fe608060405234801561001057600080fd5b506004361061009e5760003560e01c8063b544bf8311610066578063b544bf8314610224578063c5a5573314610242578063f7260d3e14610376578063f7d76ae5146103c0578063fae8fb2c146104435761009e565b806328d42cb0146100a35780634357855e1461017a57806367e404ce146101b25780639535c854146101fc578063aa8c217c14610206575b600080fd5b610178600480360360c08110156100b957600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff169060200190929190803573ffffffffffffffffffffffffffffffffffffffff169060200190929190803590602001909291908035906020019064010000000081111561012057600080fd5b82018360208201111561013257600080fd5b8035906020019184600183028401116401000000008311171561015457600080fd5b90919293919293908035906020019092919080359060200190929190505050610461565b005b6101b06004803603604081101561019057600080fd5b810190808035906020019092919080359060200190929190505050610592565b005b6101ba61082c565b604051808273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b610204610852565b005b61020e610920565b6040518082815260200191505060405180910390f35b61022c610926565b6040518082815260200191505060405180910390f35b6102fb6004803603602081101561025857600080fd5b810190808035906020019064010000000081111561027557600080fd5b82018360208201111561028757600080fd5b803590602001918460018302840111640100000000831117156102a957600080fd5b91908080601f016020809104026020016040519081016040528093929190818152602001838380828437600081840152601f19601f82011690508083019250505050505050919291929050505061092c565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561033b578082015181840152602081019050610320565b50505050905090810190601f1680156103685780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b61037e6109d3565b604051808273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b6103c86109f9565b6040518080602001828103825283818151815260200191508051906020019080838360005b838110156104085780820151818401526020810190506103ed565b50505050905090810190601f1680156104355780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b61044b610a97565b6040518082815260200191505060405180910390f35b600f60009054906101000a900460ff161561047b57600080fd5b86600660006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555085600760006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550846009819055508383600a91906105159291906116e9565b5081600b819055506001600f60006101000a81548160ff02191690831515021790555033600860006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555080600e81905550610588610a97565b5050505050505050565b816005600082815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161461064a576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260288152602001806118686028913960400191505060405180910390fd5b6005600082815260200190815260200160002060006101000a81549073ffffffffffffffffffffffffffffffffffffffff0219169055807f7cc135e0cebb02c3480ae5d74d377283180a2601f8f644edf7987b009316c63a60405160405180910390a260095482106108275760003073ffffffffffffffffffffffffffffffffffffffff16319050600760009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166108fc829081150290604051600060405180830381858888f1935050505015801561073a573d6000803e3d6000fd5b50600760009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff167ff49b7f2a4b7e45f8be7e9174ea88332b458d5516dcf5eee9ef9a17600e7f24f28584604051808381526020018281526020019250505060405180910390a3600860009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16ff5b505050565b600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b600b54421161086057600080fd5b60003073ffffffffffffffffffffffffffffffffffffffff16319050600660009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166108fc829081150290604051600060405180830381858888f193505050501580156108e4573d6000803e3d6000fd5b50600860009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16ff5b60095481565b600b5481565b6060816040516020018080611839602f9139602f0182805190602001908083835b60208310610970578051825260208201915060208101905060208303925061094d565b6001836020036101000a038019825116818451168082178552505050505050905001807f2f62616c616e63650000000000000000000000000000000000000000000000008152506008019150506040516020818303038152906040529050919050565b600760009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b600a8054600181600116156101000203166002900480601f016020809104026020016040519081016040528092919081815260200182805460018160011615610100020316600290048015610a8f5780601f10610a6457610100808354040283529160200191610a8f565b820191906000526020600020905b815481529060010190602001808311610a7257829003601f168201915b505050505081565b600060603073ffffffffffffffffffffffffffffffffffffffff1663c5a55733600a6040518263ffffffff1660e01b81526004018080602001828103825283818154600181600116156101000203166002900481526020019150805460018160011615610100020316600290048015610b515780601f10610b2657610100808354040283529160200191610b51565b820191906000526020600020905b815481529060010190602001808311610b3457829003601f168201915b50509250505060006040518083038186803b158015610b6f57600080fd5b505afa158015610b83573d6000803e3d6000fd5b505050506040513d6000823e3d601f19601f820116820180604052506020811015610bad57600080fd5b8101908080516040519392919084640100000000821115610bcd57600080fd5b83820191506020820185811115610be357600080fd5b8251866001820283011164010000000082111715610c0057600080fd5b8083526020830192505050908051906020019080838360005b83811015610c34578082015181840152602081019050610c19565b50505050905090810190601f168015610c615780820380516001836020036101000a031916815260200191505b506040525050509050610c72611769565b610c86600d5430634357855e60e01b610d87565b9050610cd26040518060400160405280600381526020017f67657400000000000000000000000000000000000000000000000000000000008152508383610db89092919063ffffffff16565b610d516040518060400160405280600481526020017f70617468000000000000000000000000000000000000000000000000000000008152506040518060400160405280600e81526020017f746f74616c5f726563656976656400000000000000000000000000000000000081525083610db89092919063ffffffff16565b610d80600c60009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1682600e54610deb565b9250505090565b610d8f611769565b610d97611769565b610dae858585846110a3909392919063ffffffff16565b9150509392505050565b610dcf82846080015161115390919063ffffffff16565b610de681846080015161115390919063ffffffff16565b505050565b600030600454604051602001808373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1660601b815260140182815260200192505050604051602081830303815290604052805190602001209050600454836060018181525050836005600083815260200190815260200160002060006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550807fb5e6e01e79f91267dc17b4e6314d5d4d03593d2ceee0fbb452b750bd70ea5af960405160405180910390a2600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16634000aea08584610f2387611178565b6040518463ffffffff1660e01b8152600401808473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200183815260200180602001828103825283818151815260200191508051906020019080838360005b83811015610faa578082015181840152602081019050610f8f565b50505050905090810190601f168015610fd75780820380516001836020036101000a031916815260200191505b50945050505050602060405180830381600087803b158015610ff857600080fd5b505af115801561100c573d6000803e3d6000fd5b505050506040513d602081101561102257600080fd5b8101908080519060200190929190505050611088576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260238152602001806118166023913960400191505060405180910390fd5b60016004600082825401925050819055508090509392505050565b6110ab611769565b6110bb8560800151610100611344565b508385600001818152505082856020019073ffffffffffffffffffffffffffffffffffffffff16908173ffffffffffffffffffffffffffffffffffffffff16815250508185604001907bffffffffffffffffffffffffffffffffffffffffffffffffffffffff191690817bffffffffffffffffffffffffffffffffffffffffffffffffffffffff191681525050849050949350505050565b6111608260038351611398565b61117381836114dd90919063ffffffff16565b505050565b6060634042994660e01b60008084600001518560200151866040015187606001516001896080015160000151604051602401808973ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020018881526020018781526020018673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001857bffffffffffffffffffffffffffffffffffffffffffffffffffffffff19167bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916815260200184815260200183815260200180602001828103825283818151815260200191508051906020019080838360005b838110156112a757808201518184015260208101905061128c565b50505050905090810190601f1680156112d45780820380516001836020036101000a031916815260200191505b509950505050505050505050604051602081830303815290604052907bffffffffffffffffffffffffffffffffffffffffffffffffffffffff19166020820180517bffffffffffffffffffffffffffffffffffffffffffffffffffffffff83818316178352505050509050919050565b61134c6117d6565b60006020838161135857fe5b0614611371576020828161136857fe5b06602003820191505b81836020018181525050604051808452600081528281016020016040525082905092915050565b601781116113c5576113bf8160058460ff16901b60ff1617846114ff90919063ffffffff16565b506114d8565b60ff8111611407576113ea601860058460ff16901b17846114ff90919063ffffffff16565b506114018160018561151f9092919063ffffffff16565b506114d7565b61ffff811161144a5761142d601960058460ff16901b17846114ff90919063ffffffff16565b506114448160028561151f9092919063ffffffff16565b506114d6565b63ffffffff811161148f57611472601a60058460ff16901b17846114ff90919063ffffffff16565b506114898160048561151f9092919063ffffffff16565b506114d5565b67ffffffffffffffff81116114d4576114bb601b60058460ff16901b17846114ff90919063ffffffff16565b506114d28160088561151f9092919063ffffffff16565b505b5b5b5b5b505050565b6114e56117d6565b6114f783846000015151848551611541565b905092915050565b6115076117d6565b61151783846000015151846115fa565b905092915050565b6115276117d6565b611538848560000151518585611648565b90509392505050565b6115496117d6565b825182111561155757600080fd5b846020015182850111156115825761158185600261157b88602001518887016116a9565b026116c5565b5b6000808651805187602083010193508088870111156115a15787860182525b60208701925050505b602084106115cd57805182526020820191506020810190506020840393506115aa565b60006001856020036101000a03905080198251168184511681811785525050879350505050949350505050565b6116026117d6565b8360200151831061161f5761161e8460028660200151026116c5565b5b835180516020858301018481538186141561163b576001820183525b5050508390509392505050565b6116506117d6565b8460200151848301111561166e5761166d856002868501026116c5565b5b60006001836101000a039050855183868201018583198251161781528151858801111561169b5784870182525b505085915050949350505050565b6000818311156116bb578290506116bf565b8190505b92915050565b6060826000015190506116d88383611344565b506116e383826114dd565b50505050565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061172a57803560ff1916838001178555611758565b82800160010185558215611758579182015b8281111561175757823582559160200191906001019061173c565b5b50905061176591906117f0565b5090565b6040518060a0016040528060008019168152602001600073ffffffffffffffffffffffffffffffffffffffff16815260200160007bffffffffffffffffffffffffffffffffffffffffffffffffffffffff19168152602001600081526020016117d06117d6565b81525090565b604051806040016040528060608152602001600081525090565b61181291905b8082111561180e5760008160009055506001016117f6565b5090565b9056fe756e61626c6520746f207472616e73666572416e6443616c6c20746f206f7261636c6568747470733a2f2f6170692e626c6f636b6379706865722e636f6d2f76312f6274632f74657374332f61646472732f536f75726365206d75737420626520746865206f7261636c65206f66207468652072657175657374a2646970667358221220a9373394dbcffd5f24e73521ef6bbb916848f08faafbff77cf0e21806132cec364736f6c63430006090033"; // replace this with the code of the escrow contract
    event EscrowCreated(address indexed sender, address indexed receiver, address escrow, bytes32 salt);
    event DepositReceived(address sender, uint256 value);
    address payable owner;
    uint256 public oracleFee;
    uint256 public factoryFee;
    address private linkToken;
    
    receive()external payable {
        emit DepositReceived(msg.sender, msg.value);
    }

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
        Escrow escrow = Escrow(addr);
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
        Escrow escrow = Escrow(addr);
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
