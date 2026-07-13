//Group Members:
// 1. Name: Munyaneza yassin   Student ID: BBICTR/2024/47538
// 2. Name: Gihozo kellia   Student ID: BBICTR/2024/44711
// 3. Name: Robert Rukundo   Student ID: BBICTR/2024/48686
// 4. Name: Niyonizera manzi kevin   Student ID: BBICTR/2024/47207
// 5. Name: Berwa Dela joie Ines   Student ID: BBICTR/2024/48199

// Custom Exception
class InvalidStudentDataException implements Exception {
  final String message;

  InvalidStudentDataException(this.message);

  @override
  String toString() {
    return "InvalidStudentDataException: $message";
  }
}

// Registration Function
void registerStudent(String name, int age, String email) {
  if (name.isEmpty) {
    throw InvalidStudentDataException("Name cannot be empty.");
  }

  if (age < 18 || age > 60) {
    throw InvalidStudentDataException("Age must be between 18 and 60.");
  }

  if (!email.contains("@")) {
    throw InvalidStudentDataException("Invalid email address.");
  }

  print("Registration Successful!");
}

void main() {
  // Case 1 - Valid
  try {
    registerStudent("Yassin", 22, "yassin@gmail.com");
  } on InvalidStudentDataException catch (e) {
    print(e);
  } finally {
    print("Registration attempt completed.");
  }

  print("");

  // Case 2 - Invalid Name
  try {
    registerStudent("", 22, "abc@gmail.com");
  } on InvalidStudentDataException catch (e) {
    print(e);
  } finally {
    print("Registration attempt completed.");
  }

  print("");

  // Case 3 - Invalid Age
  try {
    registerStudent("John", 15, "john@gmail.com");
  } on InvalidStudentDataException catch (e) {
    print(e);
  } finally {
    print("Registration attempt completed.");
  }
}
