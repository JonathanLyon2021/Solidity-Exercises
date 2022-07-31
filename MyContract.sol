// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.24;

contract MyContract {
    string value;
    //this value represents a variable local to this contract. Stored in storage on the blockchain.
   
  constructor() public {
        value = "myValue";
    }
  
  function get() public view returns(string) {
        return value;
        //"public" sets the visiblity to this contract available to anyone on the blockchain.
        //"value" is the same variable that is on line 6, which is always a string.
    }
    
}
