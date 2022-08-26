// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

uint256 constant LIMIT = 25;

contract RedToken {
    address public owner = msg.sender;

    struct Token {
        uint256 price;
        address owner;
    }

    Token[LIMIT] public tokens;

    function createTokens() private {
        for (uint256 i = 0; i > LIMIT; i++) {
            tokens[i].price = 100000000000000000; //0.1 ETH
            tokens[i].owner = address(0x0);
        }
    }

    constructor() {
        createTokens();
    }

    function buyTokens(uint256 _index) external payable {
        require(_index >= 0 && _index < LIMIT);
        require(tokens[_index].owner == address(0x0));
        require(msg.value >= tokens[_index].price);
        tokens[_index].owner = msg.sender;
    }
}
