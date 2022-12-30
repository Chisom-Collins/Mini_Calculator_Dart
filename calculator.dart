import "dart:io";
/*This program performs mathematical operations such as addition, subtraction,multiplication,division AND product.
users would be require enter two numbers or more. Depending on their choice !!*/

void main() {
  print("WELCOME TO THIS REAL TIME CALCULATOR !!");
  //prints current date and time
  DateTime now = new DateTime.now();
  print(now);

  //entering two digits
  print("Please the first number : ");
  int firstNum = int.parse(stdin.readLineSync()!);
  print("Please the second number : ");
  int secondNum = int.parse(stdin.readLineSync()!);

  //entering the operation you'd want to perform
  print("OPERATION CALCULATION LOADING !!");
  print("Please enter an option between A - D");
  String? option = stdin.readLineSync();

  switch (option) {
    //addition -A or a
    case 'A':
    case 'a':
      print("The total is ${firstNum + secondNum}");
      break;
    //subtraction - B or b
    case 'B':
    case 'b':
      if (secondNum > firstNum) {
        print("The difference is ${secondNum - firstNum}");
      } else if (firstNum < secondNum) {
        print(
            "PLEASE RE-ENTER THE FIRST NUMBER ENSURING THAT THE FIRST NUMBER IS GREATER THAN THE SECOND NUMBER !!");
        print(
            "FAILURE TO DO SO, WILL RESULT TO A NEGATIVE NUMBER TO BE PRINTED!!");
        int firstNumEnsure = int.parse(stdin.readLineSync()!);
        int secondNumEnsure = int.parse(stdin.readLineSync()!);

        print("The difference is ${firstNumEnsure - secondNumEnsure}");
      }
      break;
    //division - C or c
    case 'C':
    case 'c':
      if (firstNum > secondNum) {
        print("The quotient is ${firstNum / secondNum}");
      } else {
        print("The quotient is ${secondNum / firstNum}");
      }
      break;
    //product - D or d
    case 'D':
    case 'd':
      if (firstNum < secondNum) {
        int prod = firstNum * secondNum;
        print("The product is ${prod}");
      } else {
        int pr = secondNum * firstNum;
        print("The product is ${pr}");
      }
      break;
  }
  print("THANK YOU FOR USING THIS APPLICATION !!");
}
