// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Ether2Wei {
    uint256 public oneWei = 1 wei;
    // 1 wei is equal to 1
    bool public isOneWei = oneWei == 1;

    uint256 public oneEther = 1 ether;
    // 1 ether is equal to 1e18
    bool public isOneEther = oneEther == 1e18;
}
