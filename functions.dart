//Group Members:
// 1. Name: Munyaneza yassin   Student ID: BBICTR/2024/47538
// 2. Name: Gihozo kellia   Student ID: BBICTR/2024/44711
// 3. Name: Robert Rukundo   Student ID: BBICTR/2024/48686
// 4. Name: Niyonizera manzi kevin   Student ID: BBICTR/2024/47207
// 5. Name: Berwa Dela joie Ines   Student ID: BBICTR/2024/48199

// Function with named parameters
void registerStudent({required String name, String role = "student"}) {
  print("Student Name: $name");
  print("Role: $role");
}

// Function with optional positional parameters
String buildAddress(String city, [String? street, String? building]) {
  return "$city, ${street ?? ''}, ${building ?? ''}";
}

// Arrow function
double circleArea(double radius) => 3.14159 * radius * radius;

// Closure
Function makeCounter() {
  int count = 0;

  return () {
    count++;
    return count;
  };
}

void main() {
  print("===== Question 5 =====");

  registerStudent(name: "Yassin", role: "Student");

  print("");

  print(buildAddress("Kigali", "KG 11 Ave", "Building A"));

  print("");

  print("Circle Area: ${circleArea(7)}");

  print("");

  var counter = makeCounter();

  print(counter());
  print(counter());
  print(counter());
}
