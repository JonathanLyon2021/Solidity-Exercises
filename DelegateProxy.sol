// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


contract DelegateProxy {
    address internal implementation;
     
     function() external payable {
        address addr = implementation;
        
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), addr, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    
    }
}
