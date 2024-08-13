// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
contract ArifContract{
    function add(int a,int b) public  view returns(int ){
        return a+b;
    }
    function sub(int a,int b) public  view returns(int ){
        return a-b;
    }
    function mul(int a,int b) public  view returns(int ){
        return a*b;
    }
    function div(int a,int b) public  view returns(int ){
        return a/b;
    }
}

