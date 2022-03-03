// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This is the ERC20 Token standard Template used for making any custom Token
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract CustomToken is ERC20{
    uint256 amount;

    function tokenAmount(uint256 num)public{
        amount = num;
    }
    
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol){
        _mint(msg.sender, (amount) * 10 ** 18);  // Amount in the brackets means the amount of tokens you want to add in your wallet
    }
}
