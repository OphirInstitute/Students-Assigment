//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

/* 
    Contract to store the name of various departments
    in Ophir by name and the number of workers in an 
    array in sequence.
*/

contract OphirStorage {

    uint256 numberOfOphirWorkers;

    string ophirDepartment;

    struct Ophir {
        string ophirDepartment;
        uint256 numberOfOphirWorkers;
    }

    Ophir[] public ophir;

    //mapping to find the number of workers by their department

    mapping(string => uint256) public ophirDepartmentToNumberOfWorkers;


    function Store(uint256 _numberOfOphirWorkers) public virtual {
        numberOfOphirWorkers = _numberOfOphirWorkers;
    }

    function Get() public view returns(uint256){
        return numberOfOphirWorkers;
    }

    function ophirStore(string memory _ophirDepartment, uint256 _numberOfOphirWorkers) public {
        ophir.push(Ophir(_ophirDepartment, _numberOfOphirWorkers));
        ophirDepartmentToNumberOfWorkers[_ophirDepartment] = _numberOfOphirWorkers;
    }
}
