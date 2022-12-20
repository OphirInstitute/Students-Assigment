//SPDX-License-Identifier: MIT

pragma solidity <=0.8.7;

//A contract to add more workers to the number of workers stored

import "./OphirStorage.sol";

contract AddWorkers is OphirStorage {

    function Store(uint256 _numofOphirWorkers) public override {
        numofOphirWorkers = _numofOphirWorkers + 10;
    }
}
