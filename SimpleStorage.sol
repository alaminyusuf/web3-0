// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract SimpleStorage {
   uint256 favNumber;

   struct People{
      uint256 favNumber;
      string name;
   }

   People[] public people;
   mapping(string => uint256) public nameToFavNumber;

   function store(uint256 _favNumer) public returns (uint256){
      favNumber = _favNumer;
      return favNumber;
   }

   function retrieve() public view returns(uint256) {
      return favNumber;
   }

   function addPerson(uint256 _favNumer, string memory _name) public {
      people.push(People({favNumber: _favNumer, name: _name}));
      nameToFavNumber[_name] = _favNumer;
   }
}
