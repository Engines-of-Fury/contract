// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Token.sol";

contract TestToken is Test {
    /**
     * Fuzzed test with different parameters
     */
    function testDeployment(string memory name, string memory symbol, uint256 supply) public {
        Token token = new Token(name, symbol, supply);
        assertEq(token.totalSupply(), supply);
        assertEq(token.balanceOf(address(this)), supply);
        assertEq(token.name(), name);
        assertEq(token.symbol(), symbol);
    }
}