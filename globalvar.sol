// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.7.0;
contract globalvar{
    string word="global variable";
    address public issuer;

    constructor() public {
        issuer=msg.sender;
    }

    function getword() public view returns(string memory){
        return word;
    } 

    function setword(string memory newword)public returns (string memory){
        if(issuer!=msg.sender){
            word="Not a Owner";
            return word;
        }
        else {
            word=newword;
            return word;
        }
    }
}