import 'dart:io';

void main(){
  print("enter the string");
  String name =(stdin.readLineSync()!);
  bool palindrome=name==name.split("").reversed.join();
  if(palindrome){
    print("it is palindrome");

  }else{
    print("it is not palindrome");
  }
}
