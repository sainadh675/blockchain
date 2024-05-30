// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.7.0;
contract MyContract{
    uint storedData; // state variable
    constructor() public {
        storedData=100; // intialzing the value for the state variable in constructor
    }
    function setData(uint x)public{
        storedData=x;
    }
    function getData()public view returns (uint){
        return storedData;
    }

}