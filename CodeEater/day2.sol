// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0 ; 

contract Pay {
    // Define a payable address
    // is address par transfer krna hai
    // my sepoliaEth account address
    address payable user = payable(0x5e58C34853aEE853Ea7BFBb7e5A95d06D5341641);

    // Function to receive Ether
    function PayEther() public payable {
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
function GetCurrentBalance(address ad) public  view returns(uint){
       return address(ad).balance;
}
    function setEtherTo() public {
        require(address(this).balance >= 1 ether, "Insufficient balance in contract");
        user.transfer(1 ether);
    }
    // address payable from=user;
    // function TransferOneToAnother( address payable to, uint money) public {
    //     require(address(this).balance >= money, "Insufficient balance in contract");
    //     to.transfer(2 ether);
    // }
}
