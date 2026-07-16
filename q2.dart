import 'dart:io';


void addStudent(List<Map<String, dynamic>> studentsList, {String? name, int? age, double? score}) {
  studentsList.add({
    "name": name ?? "Unknown",
    "age": age ?? 18,
    "score": score ?? 0.0,
  });
}

void main() {
  
  List<Map<String, dynamic>> students = [
    {"name": "Ali", "age": 20, "score": 55.0},
    {"name": "Sara", "age": 22, "score": 85.0},
  ];


  print("Enter student name:");
  String? inputName = stdin.readLineSync();

  print("Enter student age:");
  String? ageText = stdin.readLineSync();
  int inputAge = int.tryParse(ageText ?? '0') ?? 18;

  print("Enter student score:");
  String? scoreText = stdin.readLineSync();
  double inputScore = double.tryParse(scoreText ?? '0') ?? 0.0;

  addStudent(students, name: inputName, age: inputAge, score: inputScore);

  print("\n Students with score > 60 ");
  for (var student in students) {
    if (student["score"] > 60) {
      print("Name: ${student["name"]} - Score: ${student["score"]}");
    }
  }
}