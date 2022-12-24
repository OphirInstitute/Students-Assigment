//SPDX-License-Identifier: MIT

pragma solidity <=0.8.17;

// Assignment 2: Write a contract to call the number of workers in Ophir Departments by the name of departments.
// Using mapping, we could call both number and availability of workers on the contract.

contract OphirPowerhouse {

    mapping (string=>uint) public departmenttonoofworkers;
    mapping (string=>bool) public departmenttoavailabilityofworkers;

    Institute [] public institute;

    struct Institute {
        string departmentnames;
        uint noofworkers;
        bool availabilityofworkers;
    }

    function adddepartments (string memory _departmentnames, uint _noofworkers, bool _availabilityofworkers) public {
        Institute memory addeddepartments = Institute ({departmentnames: _departmentnames, noofworkers: _noofworkers, availabilityofworkers: _availabilityofworkers});
        institute.push(addeddepartments);
        departmenttonoofworkers[_departmentnames] = _noofworkers;
        departmenttoavailabilityofworkers[_departmentnames] = _availabilityofworkers;
    }
    

} 