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
   
    /* newperson(line 16) is saved in memory & will be destroyed after the constructor function has finished running.*/
    constructor() {
       Person memory newperson = Person({   
           name: "Jonathan",
           age: 36,
           personAddress: msg.sender
       });
       
       Person memory personTwo = Person({
           name: "Jon Boy",
           age: 37,
           personAddress: msg.sender
       });
       
       persons.push(newperson); // newperson was pushed into this persons array for permanent storage. 
                                //The temporary newperson variable in memory will be discarded.
       persons.push(personTwo);  
   }
   
    function loadPerson() public view returns ( Person[] memory ){
        return persons;
    }

    function changeDataone() public view {  //Creates a variable named person and saved it to memory.
        Person memory person = persons[0]; //We can not change person.age bc we are not referencing 
        person.age = 56;                   //the storaage location in this particular function.
        //At the termination of the function the persons storage variable remains the same because the data in memory has be wiped off.
    }
