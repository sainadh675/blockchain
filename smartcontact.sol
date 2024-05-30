// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.8.0;
contract studentmarks{
    address owner;
    int studentcount=0;

    // creating struct
    struct Student{
        int ID;
        string fname;
        string lname;
        int marks;
    }
    mapping (int => Student)public stdrecords;
    modifier onlyowner{
        require(owner==msg.sender);
        _;
    }
    constructor(){
        owner=msg.sender;
    }
    // creating functions to add student records
    function addnewrecords(int _ID,string memory _fname,string memory _lname,int _marks)public onlyowner{
        studentcount=studentcount+1;
        // fetching student details
        stdrecords[studentcount]=Student(_ID,_fname,_lname,_marks);
    }
    //adding bonus to marks
    function bonusmarks(int _bonus)public onlyowner{
        stdrecords[studentcount].marks=stdrecords[studentcount].marks+_bonus;
    }



}