//SPDX-License-Identifier: MIT

pragma solidity <=0.8.17;

// Assignment 1: Build a storage contract storing the name of various departments in Ophir by their name and the number of workers, then build an array to store them in sequence.

contract OphirPowerhouse {

    Institute [] public institute;

    struct Institute {
        string departmentnames;
        uint noofworkers;
        bool availabilityofworkers;
    }

    function adddepartments (string memory _departmentnames, uint _noofworkers, bool _availabilityofworkers) public {
        Institute memory newdepartments = Institute ({departmentnames: _departmentnames, noofworkers: _noofworkers, availabilityofworkers: _availabilityofworkers});
        institute.push(newdepartments);
    }

    //Added availability of workers for confirmation on whether workers are available or not
} 