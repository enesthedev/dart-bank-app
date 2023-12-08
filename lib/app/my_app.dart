import 'dart:io';

import 'package:dart_bank_app/interfaces/screen.dart';
import 'package:dart_bank_app/screens/terminal/welcome.dart';
import 'package:dart_bank_app/utils/isNumberInRange.dart';

class MyApp {
  final Map<int, Screen> screens = {
    1: WelcomeScreen(),
  };

  static void start() {
    final MyApp app = MyApp();
    app.run();
  }

  void run() {
    print('Welcome to the ABC Bank!');
    print('\n1. Open an account');
    print('2. Deposit');
    print('3. Withdraw');

    int? actionNumber;
    do {
      print('Please enter action number to proceed:');
      String input = stdin.readLineSync().toString();
      try {
        actionNumber = int.parse(input);
      } catch (e) {
        print('Invalid input. Please enter a valid number.');
      }
    } while (actionNumber == null ||
        !isNumberInRange(actionNumber, 1, screens.length));

    final Screen screen = screens[actionNumber]!;
    screen.show();
  }
}
