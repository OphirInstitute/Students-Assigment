//SPDX-License-Identifier: MIT

pragma solidity <=0.8.17;

// Assignment 3.1: Write a contract to deploy the Ophir departmental contract, store the numbers of workers in the Ophir departments on different indexes and get them.
// For this contract, only uint is needed to add and check number of workers.
contract OphirWorkers {

    uint noofworkers;

    function addnoofworkers(uint _noofworkers) public virtual {
        noofworkers = _noofworkers;
    }
    function checknoofworkers() view public returns (uint) {
        return noofworkers;
    }
} 