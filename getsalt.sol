pragma solidity 0.7.0;

// SPDX-License-Identifier: MIT


/**
EscrowSalt checks that the correct salt is returned from Escrow contract
*/
contract EscrowSalt is Escrow {
      modifier onlyOwner(require(owner = msg.sender,"Permission granted only to owner")) 

    function getSalt(address _addr, address _addr2, string memory _salt) public pure onlyOwner returns(bytes32 newsalt){
        newsalt = keccak256(abi.encode(_addr, _addr2, _salt));
        return newsalt;
    }
}