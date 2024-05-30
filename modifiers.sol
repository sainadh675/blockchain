// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;
contract moidify{
    address public owner;
    mapping (address=>bool)public admins;
    modifier onlyowner(){
        require(msg.sender==owner,"he is the owner");
        _;
    }
    modifier isadmin()
    {
        require(admins[msg.sender],"only admins can call this");
        _;
    }
    constructor()
    {
        owner=msg.sender;
        admins[msg.sender]=true;
    }
    function addamin(address _admin)public onlyowner{
        admins[_admin]=true;
    }
    function removeadmin(address _admin)public onlyowner{
        admins[_admin]=false;
    }
}