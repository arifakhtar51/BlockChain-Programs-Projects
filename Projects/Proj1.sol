// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery{
    address manager=msg.sender;//global only runs once when it is deployed
    address payable []arr;
    function SendEth() public  payable {
        // to recive money from participants
        // not need of this function 
    }
    function getRandomNumber(uint max) private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender))) % max;
    }

    function playLottery() public returns(address) {
        // Ensure only the manager can call this function
        require(manager == msg.sender, "Only the manager can call this function.");
        // Get the winning address
        address payable winner = payable(arr[getRandomNumber(arr.length)]);
        // Calculate the prize amount (2 times the number of participants in wei)
        uint prizeAmount = 2 * arr.length * 1 ether;
        // Transfer the prize amount to the winner
        winner.transfer(prizeAmount);
        // Return the winner's address
         arr= new  address payable[](0);//to restart the array 
        return winner;
    }
    function participate() public payable  {
        require(msg.value==2 ether,"Please Pay 2 ether ");  
        // 2 eth have to give to participate
        arr.push(payable (msg.sender));
       
    }
    function checkBalanceInContract() public  view returns(uint){
        require(manager==msg.sender,"You are not manaager");
        return address(this).balance;
    }

    function SizeOfParticipant() public view  returns(uint){
        return arr.length;
    }

    function checkAddress() public view returns (address){
        return address(this);
    }
    function Msg_Sender() public view returns (address){
        return msg.sender;
    }

}