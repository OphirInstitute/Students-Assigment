//SPDX-License-Identifier: MIT

pragma solidity <=0.8.17;

// Assignment 4: Write a contract to add more workers to the number of workers stored.
// Overwrote the function to store number of workers to add 5 units to every inputed number.

import "./OphirWorkers.sol";

contract DeptExpansion is OphirWorkers {
    function addnoofworkers(uint _noofworkers) public override {
        noofworkers = _noofworkers +5;
    }
}
 