import 'package:dart_bank_app/app/my_app.dart';
import 'package:dart_bank_app/interfaces/screen.dart';
import 'package:dart_bank_app/screens/terminal/exit_screen.dart';

class ListAccountScreen extends Screen {
  void show(MyApp app) {
    print('\nWelcome to the account list screen!\n');

    if (app.accounts.isEmpty) {
      print('No accounts found.');
      ExitScreen.show(app);
      return;
    }

    app.accounts
        .forEach((account) => print('*  ${account.name} - ${account.email}'));

    ExitScreen.show(app);
  }
}
