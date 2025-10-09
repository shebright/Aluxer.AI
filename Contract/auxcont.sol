// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
    string public message;

    // Constructor sets an initial message
    constructor(string memory _message) {
        message = _message;
    }

    // Function to update the message
    function setMessage(string memory _newMessage) public {
        message = _newMessage;
    }

    // Function to read the message
    function getMessage() public view returns (string memory) {
        return message;
    }
}

