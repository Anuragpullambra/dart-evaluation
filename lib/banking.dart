import 'dart:io';

class BankAccount {
  int ? accountnumber;
  String? accountholder;
  double? balance;

  BankAccount(int accountnumber, String accountholder, double balance);
  


  void deposit() {
    print("enter the ammount");
    double? amount=double.parse(stdin.readLineSync()!);
    balance = amount;
    print("$amount deposited");

  }

  void withdrow() {
    print("enter the amount for withdrow");
    double? amount=double.parse(stdin.readLineSync()!);
    if(amount <= balance!){
      balance=amount;
      print("$amount for withdow");
    }else{
      print("not withdrow");
    }

  }

 void getaccountinfo()
 {
   print("accountnumber is $accountnumber");
   print("accountholder is $accountholder");
   print("balance is $balance");
 }


}
void main(){

print("enter the name");
String accountholder=(stdin.readLineSync()!);
print("enter your accunt num");
int accountnumber=int.parse(stdin.readLineSync()!);
print("your balance");
double balance=double.parse(stdin.readLineSync()!);
BankAccount bankAccount =BankAccount(accountnumber,accountholder,balance);

bankAccount.deposit();
bankAccount.withdrow();
bankAccount.getaccountinfo();


}
