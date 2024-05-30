// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract banking{
    mapping (address=>uint)public balances;
    address payable owner;

    constructor(){
        owner=payable(msg.sender);
    }

    function deposit()public payable {
        require(msg.value>0,"deposit amount greater than 0");
        balances[msg.sender]+=msg.value;
    }

    function transfer(address payable recipient,uint amount)public {
        require(amount<=balances[msg.sender],"insufficient balance");
        require(amount>0,"transfer amount greater than 0");
        balances[msg.sender]-=amount;
        balances[recipient]+=amount;
    }

    function balance()public view returns (uint){
        return balances[msg.sender];
    }

    function getbalance(address payable user)public view returns (uint){
        return balances[user];
    }
}