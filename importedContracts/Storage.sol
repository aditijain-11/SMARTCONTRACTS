// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Storage{
    uint256 public favnum;
    
        // NEW TYPE: struct
    
    struct People{
        uint256 favpeople;
        string name;
    }
    
    // creating a struct object
    People[] public people;
    mapping(string => uint256) public nametoFavNum;
    
    
    function Store(uint256 _favnum) public{
        favnum = _favnum;
    }
    function retrieve() public view returns(uint256){
        return favnum;
    }
    // view functions are blue
    // instead of view when pure is used this function does actual calculation within the function
    // memory keyword : data stored in memory while execution
    // storage: data will persist even after the function call
    
    function addPerson(string memory _name, uint256 _favoritepeoplenum) public{
        people.push(People(_favoritepeoplenum,_name));
        nametoFavNum[_name] = _favoritepeoplenum;
        
    }
}