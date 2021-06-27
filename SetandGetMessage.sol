// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title FirstSolidity program
 * @dev implementing getter and setter functions for state variables
 * Print a welcome to solidity message 
 * Time values are integers.
 */
 
 contract FirstContract{
     string private message;
     uint256 private currentDate;
     
     constructor(){
         message = "Welcome to Solidity";
         currentDate = block.timestamp;
     }
     
      function getMessage() public view returns (string memory,uint256){
         return (message ,currentDate);
     }
     
     function modifyMessage(string memory _message) public returns(string memory){
         message = _message;
         return message;
     }
 }
