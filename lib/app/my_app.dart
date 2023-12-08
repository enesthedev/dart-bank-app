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
    print('3. Exit\n');

    int selectedOption = getSelectedOption();
    if (selectedOption == 3) {
      print('Thank you for using ABC Bank!');
      return;
    }

    final Screen screen = screens[selectedOption]!;
    screen.show(this);
  }

  int getSelectedOption() {
    int? selectedOption;
    do {
      print('Please enter number to proceed:');
      String input = stdin.readLineSync().toString();
      try {
        selectedOption = int.parse(input);
      } catch (e) {
        print('Invalid input. Please enter a valid number.');
      }
    } while (selectedOption == null ||
        !isNumberInRange(selectedOption, 1, screens.length));
    return selectedOption;
  }
}
