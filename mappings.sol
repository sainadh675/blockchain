// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.7.0;
contract myContract{
    mapping (address => uint)balances; // declaring  mapping
    mapping (address => mapping (address => bool)) approved; // declaring a nested mapping
    mapping (address => uint[])scores; //declaring a array in mapping
    
    function setData(address spender)public {

        // adding 
        balances[msg.sender]=100;
        // Reading the mapping
        balances[msg.sender];
        // updating the mapping
        balances[msg.sender]=200;
        // deleting the mpping
       // delete balances[msg.sender];


        //nested mapping
        approved[msg.sender][spender]=false;
        //reading the nested maaping
        approved[msg.sender][spender];
        //updating the nested mapping
        approved[msg.sender][spender]=true;
       // delete approved[msg.sender][spender];

       //array in mapping
       scores[msg.sender].push(1);
       scores[msg.sender].push(2);
       scores[msg.sender].push(3);
    //   scores[msg.sender][0];
       scores[msg.sender][0]=10;
       scores[msg.sender][1]=20;
       scores[msg.sender];
       




    }
    function getData (address spender)external view returns (bool){
        return approved[msg.sender][spender];
    }
    function foo()public view returns (uint){
        return scores[msg.sender][0];
    }

}