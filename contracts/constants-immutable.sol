// SPDX-License-Identifier: M
pragma solidity ^0.8.13;

contract Constants {
    // coding convention to upppercase constants variables
    address public constant MY_ADDRESS =
        0xC6dF86f5f68f0F233Fe5D7eb09d34A5c6B265Acb;
    uint256 public constant MY_UINT = 123;
}

/**
    immutable variables are like constants
    its value can be set inside a constructor()
    and cannot be modified later
 */
contract Immutables {
    // coding convention to uppercase constant variable
    address public immutable SENDER;

    constructor() {
        SENDER = msg.sender;
    }
}
