//Group Members:
// 1. Name: Munyaneza yassin   Student ID: BBICTR/2024/47538
// 2. Name: Gihozo kellia   Student ID: BBICTR/2024/44711
// 3. Name: Robert Rukundo   Student ID: BBICTR/2024/48686
// 4. Name: Niyonizera manzi kevin   Student ID: BBICTR/2024/47207
// 5. Name: Berwa Dela joie Ines   Student ID: BBICTR/2024/48199

void main() {
  // Hardcoded student score
  int score = 82;

  // Determine the grade using if / else if / else
  if (score >= 90) {
    print("Grade: A");
  } else if (score >= 75) {
    print("Grade: B");
  } else if (score >= 60) {
    print("Grade: C");
  } else if (score >= 50) {
    print("Grade: D");
  } else {
    print("Grade: F");
  }

  print(""); // Blank line

  // Grade letter for switch statement
  String grade = "B";

  switch (grade) {
    case "A":
      print("Excellent");
      break;

    case "B":
      print("Good");
      break;

    case "C":
      print("Average");
      break;

    case "D":
      print("Below Average");
      break;

    case "F":
      print("Fail");
      break;

    default:
      print("Invalid Grade");
  }
}
