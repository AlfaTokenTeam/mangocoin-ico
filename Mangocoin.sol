pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Mangocoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Mangocoin(address _owner)  UpgradeableToken(_owner) {
    name = "Mangocoin";
    symbol = "mangc";
    totalSupply = 1000000000000000;
    decimals = 6;

    balances[_owner] = totalSupply;
  }
}