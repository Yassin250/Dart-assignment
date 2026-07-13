//Group Members:
// 1. Name: Munyaneza yassin   Student ID: BBICTR/2024/47538
// 2. Name: Gihozo kellia   Student ID: BBICTR/2024/44711
// 3. Name: Robert Rukundo   Student ID: BBICTR/2024/48686
// 4. Name: Niyonizera manzi kevin   Student ID: BBICTR/2024/47207
// 5. Name: Berwa Dela joie Ines   Student ID: BBICTR/2024/48199

void main() {
  // -------------------------------
  // 1. for loop - Multiplication Table
  // -------------------------------
  int tableNumber = 5;

  print("Multiplication Table of $tableNumber");

  for (int i = 1; i <= 12; i++) {
    print("$tableNumber x $i = ${tableNumber * i}");
  }

  print("");

  // -------------------------------
  // 2. while loop - Prime Numbers
  // -------------------------------
  print("Prime Numbers from 1 to 50");

  int number = 2;

  while (number <= 50) {
    bool isPrime = true;

    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print(number);
    }

    number++;
  }

  print("");

  // -------------------------------
  // 3. do-while loop
  // -------------------------------
  print("Doubling Numbers");

  int value = 1;

  do {
    print(value);
    value *= 2;
  } while (value <= 1000);

  print("");

  // -------------------------------
  // 4. for-in loop
  // -------------------------------
  List<String> cities = ["Kigali", "Musanze", "Huye", "Rubavu", "Rusizi"];

  print("Cities");

  for (String city in cities) {
    print(city.toUpperCase());
  }
}
