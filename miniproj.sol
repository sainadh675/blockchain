// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
contract Banks{
    address owner;
    // adding mapping to add amount and transfer
    mapping (address=>uint)balance;
    //constrctor
    constructor(){
        owner=msg.sender;
    }

    function addbalance(uint amount)public returns (uint){
        //require(msg.sender==owner,"it is a owner account");
        balance[msg.sender]=balance[msg.sender]+amount;
        return balance[msg.sender];
    }

    //getting the balance
    function getbalance()public view returns (uint){
        return balance[msg.sender];
    }

    //function to transfer
    function transfer(address recipient,uint amount)public {
        //require(msg.sender!=recipient,"slef account can't transfer");
        require(balance[msg.sender]>=amount,"insufficient amount");
        _transfer(msg.sender,recipient,amount);
    }
    function _transfer(address from,address to,uint amount)private {
        balance[from]=balance[from]-amount;
        balance[to]=balance[to]+amount;
    }

    function transferedacc(address user)public view returns (uint){
        return balance[user];
    }

    
}