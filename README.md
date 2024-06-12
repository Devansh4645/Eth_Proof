# Eth_Proof
# MyToken Contract

## Overview

This project implements a basic ERC-20-like token contract in Solidity. The contract includes functionalities to mint and burn tokens, with a mapping to track balances of different addresses.

## Contract Details

- Token Name: Animal
- Token Symbol: AN
- Total Supply: Dynamic, starts at 0 and can be increased or decreased via minting and burning.

## Functions

### Mint

The `mint` function creates new tokens and assigns them to a specified address. It increases the total supply and updates the balance of the given address.

```solidity
function mint(address recipient, uint amount) public {
    totalTokenSupply += amount;
    addressBalances[recipient] += amount;
}



function burn(address account, uint256 amount) public {
    require(addressBalances[account] >= amount, "Balance is too low to burn the requested amount.");
    totalTokenSupply -= amount;
    addressBalances[account] -= amount;
}

