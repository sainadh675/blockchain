// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.7.0;

contract satic_arrays{
    uint[6] data1;
     int[6] data;
    function array_example()public returns (int[6]memory,uint[6]memory){
         data=[int(30),22,78,90,12,24];
        data1=[uint(89),88,67,54,43,12];
        return (data,data1);
    }
}