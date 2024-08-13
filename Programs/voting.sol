// SPDX-License-Identifier: MIT
pragma solidity 
^0.8.0;
contract ArifContract{

    function CanVote(int n)public  view  returns(string memory){
        if(n>18){
            return "Congrats You Can Vote";
        }
        else return "Sorry You Can Not Vote";
        
    }
}