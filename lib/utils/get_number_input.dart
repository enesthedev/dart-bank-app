import 'dart:io';

int getNumberInput(String message, int wantedValue) {
  int? numberInput;
  do {
    print(message);
    String input = stdin.readLineSync().toString();
    try {
      numberInput = int.parse(input);
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  } while (numberInput == null || numberInput != wantedValue);
  return numberInput;
}
