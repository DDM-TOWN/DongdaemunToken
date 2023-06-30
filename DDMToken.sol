// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC20.sol";
import "./Context.sol";
import "./ERC20Burnable.sol";

/**
 * @title Dongdaemun Token
 * @dev ERC20 Token, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract DDMToken is Context, ERC20, ERC20Burnable {

    /**
     * @dev Constructor that gives _msgSender() all of existing tokens.
     */
    constructor () ERC20("Dongdaemun Token", "DDMT") {
        _mint(_msgSender(), 1e9 * (10 ** uint256(decimals())));
    }


}
