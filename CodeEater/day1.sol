
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Identity{
    string name;
    int age;
    constructor() {
        name="arif";
        age=20;
    }
    function getName() view  public returns( string memory){
        return name;
    }
    function Getage() view  public returns( int){
        return age;
    }
    function inc() public {
        age++;
    }
}