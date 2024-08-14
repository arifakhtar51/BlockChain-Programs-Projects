// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


struct EventDetails {
    string eventName;
    address  eventOwner;
    uint eventTime;
    uint ticketPrice;
    uint maxTicket;
    uint remTicket;
}

contract Event{

 mapping (uint => EventDetails) owner;
    uint public noOfEvents = 0;

    function createEvent(string memory name, uint price, uint maxTickets,uint time) public {

        require(block.timestamp<time,"Time is wrong");
        
        owner[noOfEvents] = EventDetails({
            eventName: name,
            eventOwner: msg.sender,
            eventTime: time, // Initialize eventTime as needed
            ticketPrice: price,
            maxTicket: maxTickets,
            remTicket: maxTickets // remTicket is initially equal to maxTickets
        });
        noOfEvents++;
    }
    function getEventDeatils(uint id) public view returns(EventDetails memory) {
        require(id<noOfEvents,"Event id Does not exist");
        require(msg.sender==owner[id].eventOwner,"Your are not owner");
        return owner[id];
        // return (owner[id].eventName,owner[id].eventTime,owner[id].ticketPrice,owner[id].maxTicket,owner[id].remTicket);

    }
 // Function to buy tickets
function BuyTicket(string memory EventName_) public payable   {
    bool flag = false;
    uint id = 0;
    // Loop through the events to find the event by name
    for (uint i = 0; i < noOfEvents; i++) {
        // Compare the event names using keccak256 hash
        if (keccak256(bytes(owner[i].eventName)) == keccak256(bytes(EventName_))) {
            id = i;
            flag = true;
            break;
        }
    }
    require(flag == true, "Event not Found");
    uint price_ = owner[id].ticketPrice;
    uint x=msg.value;

    require(x == price_ * 1000000000000000000, "Value is not the same as Price of Ticket");

    address payable Organizer = payable(owner[id].eventOwner);
    Organizer.transfer(msg.value);
}

}
