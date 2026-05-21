import 'dart:io';

class BankAccount {
      int id;
      String name;
      double amount = 0;

      BankAccount(this.id,this.name);
      String get balance => "You have ${amount}\$ in your account";

      void withdraw(double withdrawn){
        if (amount <= 0 || amount > withdrawn){
          print("You dont have enough money to withdrawn.");
        }else if(withdrawn < 0 ){
          print("Wrong input");
        }
        else{
          amount -= withdrawn;
        }
      }

      void credit(double dakLuy){
        if(dakLuy <= 0){
          print("Wrong input");
        }else{
          amount+=dakLuy;
        }
      }
      
  }

  class Bank {
      // Store user's ID and name
      String name;
      Map<int, String> _accounts = {};

      Bank({required this.name});
      Map<int,String> get account => _accounts;

      // BankAccount createAccount(int accountID, String accountOwner){
      //   if(_accounts.containsKey(accountID)){
      //     throw Exception("Invalid ID get a unique one.");
      //   }else{
      //     _accounts[accountID] = accountOwner;
      //   }

      //   return BankAccount(accountID, accountOwner);
      // }
      
  }


  
  void main() {

    Bank myBank = Bank(name: "CADT Bank");
    BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

    print(ronanAccount.balance); // Balance: $0
    ronanAccount.credit(100);
    print(ronanAccount.balance); // Balance: $100
    ronanAccount.withdraw(50);
    print(ronanAccount.balance); // Balance: $50

    try {
      ronanAccount.withdraw(75); // This will throw an exception
    } catch (e) {
      print(e); // Output: Insufficient balance for withdrawal!
    }

    try {
      myBank.createAccount(100, 'Honlgy'); // This will throw an exception
    } catch (e) {
      print(e); // Output: Account with ID 100 already exists!
    }
  }
