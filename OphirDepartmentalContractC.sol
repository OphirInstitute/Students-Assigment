//SPDX-License-Identifier: MIT

pragma solidity <=0.8.17;

// Assignment 3.2: Write a contract to deploy the Ophir departmental contract, store the numbers of workers in the Ophir departments on different indexes and get them.
// All contract indexes stored in DepartmentList as Array.

import "./OphirWorkers.sol";

contract OphirPowerhouseI {
    OphirWorkers[] public DepartmentList;

    function BuildOphirPowerhouse() public {
        OphirWorkers Institute = new OphirWorkers();
        DepartmentList.push(Institute);
    }

    function addworkersS(uint _DepartmentIndex, uint _DepartmentNumber) public {
        OphirWorkers Institute = DepartmentList[_DepartmentIndex];
        Institute.addnoofworkers(_DepartmentNumber);
    }

    function checkworkersR(uint _DepartmentIndex) public view returns(uint) {
        OphirWorkers Institute = DepartmentList[_DepartmentIndex];
        return Institute.checknoofworkers();
    }
} 