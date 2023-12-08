import 'dart:io';

import 'package:dart_bank_app/app/my_app.dart';
import 'package:dart_bank_app/interfaces/screen.dart';
import 'package:dart_bank_app/models/account.dart';
import 'package:dart_bank_app/screens/terminal/exit_screen.dart';

class OpenAccountScreen extends Screen {
  void show(MyApp app) {
    print('\nWelcome to the account creation screen!\n');
    print('Please enter your name:');
    String name = stdin.readLineSync().toString();
    print('\nPlease enter your email:');
    String email = stdin.readLineSync().toString();
    print('\nPlease enter your password:');
    String password = stdin.readLineSync().toString();

    app.accounts
        .add(Account.create(name: name, email: email, password: password));

    ExitScreen.show(app);
  }
}
