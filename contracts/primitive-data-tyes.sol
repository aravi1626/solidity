// SPDX-License-Identifier: M
pragma solidity ^0.8.13;

contract PrimitiveDT {
    // default values it
    bool public defBoolean; // false
    uint256 public defUint; // 0
    int256 public defInt; // 0
    address public defAddress; // 0x0..

    // min and max of  int
    int64 public minInt = type(int64).min;
    int256 public maxInt = type(int256).max;
}
