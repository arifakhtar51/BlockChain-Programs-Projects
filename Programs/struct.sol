// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArifContract{
    struct student{
        string name;
        int age;
    }
    function setData(string memory name,int age)public  view  returns(string memory){
        student memory s1;
        s1.name=name;
        s1.age=age;
        string memory ans=s1.name;
        return ans;
    }
}