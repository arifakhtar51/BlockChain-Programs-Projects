// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArifContract{
    mapping (string=>string) public couples;
    function addCouple(string memory bf,string memory gf)public returns(string memory){
        couples[bf]=gf;
    }
    function getGf(string memory bf)public view  returns(string memory){
        return couples[bf];
    }
}