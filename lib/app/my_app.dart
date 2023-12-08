import 'dart:io';

import 'package:dart_bank_app/interfaces/screen.dart';
import 'package:dart_bank_app/models/account.dart';
import 'package:dart_bank_app/screens/terminal/list_account.dart';
import 'package:dart_bank_app/screens/terminal/open_account.dart';
import 'package:dart_bank_app/utils/is_number_in_range.dart';

class MyApp {
  final Map<int, Screen> screens = {
    1: OpenAccountScreen(),
    2: ListAccountScreen(),
  };

  final Set<Account> accounts = <Account>{};

  static void start() {
    final MyApp app = MyApp();
    app.run();
  }

  void run() {
    print('\nWelcome to the ABC Bank!');
    print('\n1. Open an account');
    print('2. List Accounts');
    print('3. Withdraw\n');

    final Screen screen = screens[getSelectedScreenNumber()]!;
    screen.show(this);
  }

  int getSelectedScreenNumber() {
    int? screenNumber;
    do {
      print('Please enter screen number to proceed:');
      String input = stdin.readLineSync().toString();
      try {
        screenNumber = int.parse(input);
      } catch (e) {
        print('Invalid input. Please enter a valid number.');
      }
    } while (screenNumber == null ||
        !isNumberInRange(screenNumber, 1, screens.length));
    return screenNumber;
  }
}
