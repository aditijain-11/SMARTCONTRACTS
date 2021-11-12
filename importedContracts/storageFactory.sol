//  SPDX-License_Identifier: MIT
pragma solidity ^0.6.0;

import "./Storage.sol";

contract StorageFactory {
    
    Storage[] public StorageArray;
    function createSimpleStorageContract() public{
        Storage simplestorage = new Storage();
        StorageArray.push(simplestorage);
    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        // need the address of the contract you want to interact switch
        // need ABI 
        Storage(address(StorageArray[_simpleStorageIndex])).Store(_simpleStorageNumber);
        
    }
    
    function Retrieve(uint256 _simpleStorageIndex) public view returns(uint256){
        return Storage(address(StorageArray[_simpleStorageIndex])).retrieve();
        
    }
}