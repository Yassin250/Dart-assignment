//Group Members:
// 1. Name: Munyaneza yassin   Student ID: BBICTR/2024/47538
// 2. Name: Gihozo kellia   Student ID: BBICTR/2024/44711
// 3. Name: Robert Rukundo   Student ID: BBICTR/2024/48686
// 4. Name: Niyonizera manzi kevin   Student ID: BBICTR/2024/47207
// 5. Name: Berwa Dela joie Ines   Student ID: BBICTR/2024/48199

// 1. Fetch student record
Future<String> fetchStudentRecord(String regNo) async {
  await Future.delayed(Duration(seconds: 2));

  return "Student Record: $regNo - Yassin Khan";
}

// 2. Fetch course list
Future<List<String>> fetchCourseList() async {
  await Future.delayed(Duration(seconds: 1));

  return [
    "Mobile Application Development",
    "Database Systems",
    "Web Development",
  ];
}

// 3. Stream courses one by one
Stream<String> streamCourses() async* {
  List<String> courses = [
    "Mobile Application Development",
    "Database Systems",
    "Web Development",
  ];

  for (String course in courses) {
    await Future.delayed(Duration(milliseconds: 500));
    yield course;
  }
}

Future<void> main() async {
  try {
    // Fetch data in parallel
    var results = await Future.wait([
      fetchStudentRecord("MKU2025001"),
      fetchCourseList(),
    ]);

    print(results[0]);

    print("");

    print("Course List:");
    print(results[1]);

    print("");

    print("Streaming Courses:");

    await for (String course in streamCourses()) {
      print(course);
    }
  } catch (e) {
    print("Error: $e");
  }
}
