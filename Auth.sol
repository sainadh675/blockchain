// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;
contract Auth{
    struct userdetails{
        address addr;
        string name;
        string password;
        bool isuserlogedIn;
    }
    //mapping userdetails
    mapping (address=>userdetails)user;

    //user registration
    function registeruser(address _address,string memory _name,string memory _password)public  returns (bool){
        require(user[_address].addr!=msg.sender);
        user[_address].addr=_address;
        user[_address].name=_name;
        user[_address].password=_password;
        user[_address].isuserlogedIn=false;
        return true;
    }
    //user login
    function loginuser(address _address,string memory _password)public returns (bool){
        if (keccak256(abi.encodePacked(user[_address].password))==keccak256(abi.encodePacked(_password)))
        {
            user[_address].isuserlogedIn=true;
            return user[_address].isuserlogedIn;
        }
        else 
        {
            return false;
        }
    }
    //check user is login or not
    function checkuserLogeIn(address _address)public view returns (bool){
        return (user[_address].isuserlogedIn);
    }
    //user logout function
    function userlogout(address _address)public {
        user[_address].isuserlogedIn=false;
    }
}