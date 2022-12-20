//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./OphirStorage.sol";

/*
    Contract to add more workers to the number
    of workers stored(Employ new workers).
*/

contract EmployWorkers is OphirStorage {

    function Store(uint256 _numberOfOphirWorkers) public override {
        numberOfOphirWorkers = _numberOfOphirWorkers + 10;
    }

}
