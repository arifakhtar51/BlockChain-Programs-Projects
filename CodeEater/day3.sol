// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract Example {
    address public owner;

    constructor() {
        owner = msg.sender; // msg.sender is the deployer address
    }
    function getad() public view  returns(address){
        return owner;
    }
    
}
