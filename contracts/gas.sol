// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Gas {
    uint256 public i = 0;

    // Using up all of the gas that you spent causes your transaction to fail.
    // State changes are undone.
    // Gas spent are not refunded.

    function forever() public {
        // Here we run a loop untill all of the gas are spent &
        // the transaction fails.
        while (true) {
            i += 1;
        }
    }
}
