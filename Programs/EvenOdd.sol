// SPDX-License-Identifier: MIT
pragma solidity 
^0.8.0;
contract If_Else{

    function Check(int n)public  view  returns(string memory){
        if(n&1==1)return "ODD";
        else return "EVEN";
        
    }


}