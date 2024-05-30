// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.7.0;


contract arrays{
    uint[] data=[10,20,22,33,44,43];
    int[] data1;

    function dynamic_array()public returns (uint[]memory,int[]memory){
        data1=[int(-65),89,33,56,3,23];

        return (data,data1);
    }
}