// SPDX-License-Identifier: MIT

pragma solidity <=0.8.7;

import "./OphirStorage.sol";

contract OphirStorageManager {
    
    OphirStorage[] public ophirStorageArray;

    function CreateOphirStorageContract() public {
        ophirStorageArray.push(OphirStorage(new OphirStorage()));
    }

    function osStore(uint256 _numofOphirWorkers, uint256 _ophirStorageIndex) public {
        OphirStorage ophirStorage = OphirStorage(ophirStorageArray[_ophirStorageIndex]);
        ophirStorage.Store(_numofOphirWorkers);
    }

    function osget(uint256 _ophirStorageIndex) public view returns(uint256){
        OphirStorage ophirStorage =OphirStorage(ophirStorageArray[_ophirStorageIndex]);
        return ophirStorage.Get();
    }
}
