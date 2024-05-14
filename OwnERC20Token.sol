// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract Franz is ERC20("ZENIVOS", "ZNVS") {

    function mint(uint256 token) public {
        _mint(msg.sender, token);
    }

    function burn(uint256 token) public {
        _burn(msg.sender, token);
    }

    function transfer(address to, uint256 token) public override returns (bool) {
        _transfer(msg.sender, to, token);
        return true;
    }
}
