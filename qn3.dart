// create a dart program that accepts a student's  name and scores for three subjects 
// using a list to store the marks and the class properties must be required, 
//the average mark function must use a basic/ beginer approach.

import 'dart:io';
class Student {
  // Required attributes
  String name;
  double score1;
  double score2;
  double score3;

  // Constructor
  Student({
   required this.name,
   required this.score1,
   required this.score2,
   required this.score3
  });

    // Basic average function
double calculateAverage() {
      return (score1 + score2 + score3) / 3;
  }
}

void main() {
  // Input section
  stdout.write("Enter student's name: ");
  String name = stdin.readLineSync()!;

  List<double> marks = [];
  for (int i = 1; i <= 3; i++) {
    stdout.write("Enter mark $i: ");
    double mark = double.parse(stdin.readLineSync()!);
    marks.add(mark);
  }

  // Create student object
  Student student = Student(name: "Emaru Akello",
   score1: marks[0],
   score2: marks[1],
   score3: marks[2]
   );

  // Output
  print("\nStudent Name: ${student.name}");
  print("Marks: ${student.score1}, ${student.score2}, ${student.score3}");
  print("Average: ${student.calculateAverage()}");
}
