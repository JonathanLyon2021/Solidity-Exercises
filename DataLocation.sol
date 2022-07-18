//SPDX-License-Identifier: Unlicense
pragma solidity >=0.7.0 <0.9.0;


contract StorageLocation {
    Person[] public persons; //Is Person[]  the persons variable?
   
   //User defined struct
    struct Person {
        string name;
        uint age;
        address personAddress;
    }
   
   
   }
