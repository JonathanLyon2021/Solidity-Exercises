// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


contract DelegateProxy {
    address internal implementation;
     
     function() external payable {
        address addr = implementation;
    
    }
}
