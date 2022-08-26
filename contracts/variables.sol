// SPDX-License-Identifier: aravi
pragma solidity ^0.8.13;

contract Variables {
    // state variables & stored on Blockchain
    string public name = "Aravinth";
    uint256 public age = 23;

    function someFun() public {
        // local variables & not stored on Blockchain
        uint256 i = 123;

        // global variables
        uint256 time = block.timestamp; // current block timestamp
        address caller = msg.sender; // address of the caller
    }
}
