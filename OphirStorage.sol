// SPDX-License-Identifier: MIT

pragma solidity <=0.8.7;

/*A Storage contract storing the names of various departments in Ophir by the name and the number of
workers*/

contract OphirStorage{

    string OphirDepartments;

    uint256 numofOphirWorkers;

    struct Ophir {
        string OphirDepartments;
        uint256 numofOphirWorkers;
    }
    Ophir[] public ophir;

    mapping(string => uint256) public OphirDepartmentstonumofOphirWorkers;


    function Store(uint256 _numofOphirWorkers) public virtual {
        numofOphirWorkers = _numofOphirWorkers;
    }

    function Get() public view returns(uint256){
        return numofOphirWorkers;
    }

    function ophirstore(string memory _OphirDepartments, uint256 _numofOphirWorkers) public {
        ophir .push(Ophir(_OphirDepartments, _numofOphirWorkers));
        OphirDepartmentstonumofOphirWorkers[_OphirDepartments] = _numofOphirWorkers;
    }
}
