struct Account {
    uint balance;
    uint dailylimit;
    
    
      Account my_account = Account(0, 10);
     
      function setBalance(uint new_balance) public {
      my_account.balance = new_balance;
      
}

}
