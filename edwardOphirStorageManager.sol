// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./OphirStorage.sol";

/*
    Contract to deploy the Ophir departmental contract, 
    store the number of workers in Ophir department on 
    different indexes(contract address) and get them.
*/

contract OphirStorageManager {

    OphirStorage[] public ophirStorageArray;
    
    function CreateOphirStorageContract() public {
        ophirStorageArray.push(OphirStorage(new OphirStorage()));
    }

    function OsStore(uint256 _numberOfOphirWorkers, uint256 _ophirStorageIndex) public {
        OphirStorage ophirStorage = OphirStorage(ophirStorageArray[_ophirStorageIndex]);
        ophirStorage.Store(_numberOfOphirWorkers);
    }

    function OsGet(uint256 _ophirStorageIndex) public view returns(uint256){
        OphirStorage ophirStorage = OphirStorage(ophirStorageArray[_ophirStorageIndex]);
        return ophirStorage.Get();
    }
}
