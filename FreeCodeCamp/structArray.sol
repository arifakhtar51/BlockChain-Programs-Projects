// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArifContract{
    struct student{
        string name;
        int age;
    }
    student[] public StudentArray;
    function setData(string memory name,int age)public returns(string memory){
        StudentArray.push(student(name,age));
        return "Successfully added...";
    }
}