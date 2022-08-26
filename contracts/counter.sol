// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

uint256 constant MAX_COUNT = 10;

contract Counter {
    address public owner = msg.sender;
    uint256 public count = 1426;

    function getCount() public view returns (uint256) {
        return count;
    }

    function increase() public {
        count += 1;
    }

    function decrease() public {
        count -= 1;
    }
}
