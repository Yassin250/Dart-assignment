//Group Members:
// 1. Name: Munyaneza yassin   Student ID: BBICTR/2024/47538
// 2. Name: Gihozo kellia   Student ID: BBICTR/2024/44711
// 3. Name: Robert Rukundo   Student ID: BBICTR/2024/48686
// 4. Name: Niyonizera manzi kevin   Student ID: BBICTR/2024/47207
// 5. Name: Berwa Dela joie Ines   Student ID: BBICTR/2024/48199

void main() {
  List<int> scores = [72, 88, 55, 91, 63, 88, 77, 91, 45, 60];

  // 1. Remove duplicates
  Set<int> uniqueScores = scores.toSet();
  print("Unique Scores:");
  print(uniqueScores);

  print("");

  // 2. Filter passing scores
  var passingScores = scores.where((score) => score >= 60);
  print("Passing Scores:");
  print(passingScores.toList());

  print("");

  // 3. Convert scores to grades
  var grades = passingScores.map((score) {
    if (score >= 80) {
      return "A";
    } else if (score >= 70) {
      return "B";
    } else {
      return "C";
    }
  });

  print("Grades:");
  print(grades.toList());

  print("");

  // 4. Average using fold
  int total = scores.fold(0, (sum, score) => sum + score);

  double average = total / scores.length;

  print("Average Score: $average");

  print("");

  // 5. Top three unique scores
  List<int> sortedScores = uniqueScores.toList();

  sortedScores.sort();

  List<int> topScores = sortedScores.reversed.take(3).toList();

  Map<int, String> topThree = {};

  for (int score in topScores) {
    if (score >= 80) {
      topThree[score] = "A";
    } else if (score >= 70) {
      topThree[score] = "B";
    } else {
      topThree[score] = "C";
    }
  }

  print("Top Three Scores:");

  topThree.forEach((score, grade) {
    print("$score : $grade");
  });
}
