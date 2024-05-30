// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract overloading{
    function add(uint a,uint b)public pure returns (uint){
        return a+b;
    }
    function add(string memory x,string memory y)public pure returns (string memory){
        return string(abi.encodePacked(x,y));
    }
}