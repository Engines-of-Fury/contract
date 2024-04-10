## Engines of Fury Token

This is a plain ERC20 token with 18 decimals based on OpenZeppelin contracts v5

It does not have any burning/minting functionality, nor is any address privileged or has owner access

All of the tokens in this are pre-minted at contract deployment to deployers wallet and no more tokens can be minted in the future

To deploy the contract you need to specify three parameters:

1. Name - the name of the token (Engines of Fury)
2. Symbol - the symbol of the token (FURY)
3. Total supply - the total supply of the token that will be preminted to deployer address (120000000000000000000000000)
(Please note that the total supply is denoted in smallest possible fraction of token where 1 TOKEN = 1000000000000000000)

Using the foundry development environment https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```
