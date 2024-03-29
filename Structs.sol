struct Account {
    uint balance;
    uint dailylimit;
    
    
      Account my_account = Account(0, 10);
     
      function setBalance(uint new_balance) public {
      my_account.balance = new_balance;
      
}



}


// 1) The procedural way
function method_1(address _address, uint _age, string _first_name, string _last_name) {
    
    Instructor memory instructor = instructors[_address];
    instructor.age = _age;
    instructor.first_name = _first_name;
    instructor.last_name = _last_name;
    instructorAccounts.push(_address) — 1;
}



// 2) The readable way
function method_2(address _address, uint _age, string _first_name, string _last_name) {
    
    instructors[_address] = Instructor(
        {
            age: _age,
            first_name: _first_name,
            last_name: _last_name
        }
    );
    
    instructorAccounts.push(_address) — 1;
}


// 3) The shorter way
function method_3(address _address, uint _age, string _first_name, string _last_name) {
    
    instructors[_address] = Instructor(_age, _first_name, _last_name);
    instructorAccounts.push(_address) — 1;
}
