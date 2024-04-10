// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title Token
 *
 * This is a plain ERC20 token with 18 decimals based on OpenZeppelin contracts v5
 * It does not have any burning/minting functionality, nor is any address privileged or has owner access
 * All of the tokens in this are pre-minted at contract deployment to deployers wallet and no more tokens can be minted in the future
 */
contract Token is ERC20 {
    /**
     * @param name The name of the token
     * @param symbol The symbol of the token
     * @param supply The total supply of the token that will be minted to msg.sender
     * @dev supply is denominated in the smallest unit of the token, 1 token must be specified as 1000000000000000000
     */
    constructor(string memory name, string memory symbol, uint256 supply) ERC20(name, symbol) {
        _mint(msg.sender, supply);
    }
}
