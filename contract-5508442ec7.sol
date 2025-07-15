// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.27;

import {ERC20} from "@openzeppelin/contracts@5.3.0/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts@5.3.0/token/ERC20/extensions/ERC20Permit.sol";

contract PyroCoin is ERC20, ERC20Permit {
    constructor(address recipient)
        ERC20("PyroCoin", "PRC")
        ERC20Permit("PyroCoin")
    {
        _mint(recipient, 100000 * 10 ** decimals());
    }
}
