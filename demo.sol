// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract demo{
    uint public a;
    uint public b;
    uint public sum;
    function set(uint x,uint y)public {
        a=x;
        b=y;
        sum=a+b;
    }
    function get()public view returns (uint){
        return sum;
    }
}
