// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;
contract forloops{
    uint256[] data;
    function loop()public returns (uint256[] memory){
        for (uint256 i=0;i<8;i++){
            if(i==5){
                break ; // stops the iteration if i=5
                //continue;  stops the current iteration
                            // and continue with the next iteration
            }
            data.push(i);
        }
        return data;
    }
}