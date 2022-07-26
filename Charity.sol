// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Charity {
    mapping (address => uint256) public donations;
    function processDonation(address user) external payable {
        donations[user] += msg.value;
    }
}

contract Receiver {
    event ValueReceived(address user, uint amount);
    function() external payable {
        emit ValueReceived(msg.sender, msg.value);
    }
}


