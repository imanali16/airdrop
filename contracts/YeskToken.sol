// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract YeskendirToken is ERC20 {
    constructor() ERC20("YeskendirToken", "YSKDTK") {
        _mint(msg.sender, 100 * (10 ** uint256(decimals())));
    }
    function airdrop(address[] memory recipients, uint256 amount) public returns (bool) {
        for (uint256 i = 0; i < recipients.length; i++) {
            _transfer(msg.sender, recipients[i], amount);
        }
        return true;
    }

}

//0x4703041f0b0745F08D610548576F702d2B078E96
//https://mumbai.polygonscan.com/address/0x4703041f0b0745F08D610548576F702d2B078E96
