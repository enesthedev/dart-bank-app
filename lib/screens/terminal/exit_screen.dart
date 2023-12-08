import 'package:dart_bank_app/app/my_app.dart';
import 'package:dart_bank_app/utils/get_number_input.dart';

class ExitScreen {
  static void show(MyApp app) {
    final selectedNumber =
        getNumberInput('\nPlease press 0 for go to main menu', 0);
    if (selectedNumber == 0) {
      app.run();
    }
  }
}
