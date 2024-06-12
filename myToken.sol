// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract MyToken {
    
    // Public variables to store token details
    string public tokenName = "Animal";
    string public tokenSymbol = "AN";
    uint public totalTokenSupply = 0;

    // Mapping to store balances of addresses
    mapping(address => uint) public addressBalances;

    // Mint function to create new tokens
    function mint(address recipient, uint amount) public {
        totalTokenSupply += amount;
        addressBalances[recipient] += amount;
    }

    // Burn function to destroy tokens
    function burn(address account, uint256 amount) public {
        require(addressBalances[account] >= amount, "Balance is too low to burn the requested amount.");
        totalTokenSupply -= amount;
        addressBalances[account] -= amount;
    }
}
