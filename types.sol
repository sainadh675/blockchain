// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract mapping_example{
    //defining a array
    uint[5]public array=[uint(1),2,3,4,5];

    //defining a strcture
    struct student{
        string name;
        string subject;
        uint8 marks;
    }

    //creating a object to structure
    student public std1;

    //defining a function return
    //values of the elements of the structures
    function structure()public returns (string memory,string memory,uint){
        std1.name="sainadh";
        std1.subject="blockchain";
        std1.marks=99;
        return (std1.name,std1.subject,std1.marks);
    }
    //creating a mappping 
    mapping (address => student)result;
    address[] student_result;
}