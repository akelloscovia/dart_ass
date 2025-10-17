// question 1
// create a dart program that accepts a student's  name and scores for three subjects 
//without using a list  and class attributes on the class must be required, 
//then it calculates the average  marks and it must display the grade using a methods.


class Student {
  // Required attributes
  String name;
  double score1;
  double score2;
  double score3;

  // Constructor with required parameters
  Student({
    required this.name,
    required this.score1,
    required this.score2,
    required this.score3,
  });

  // Method to calculate average marks
  double calculateAverage() {
    return (score1 + score2 + score3) / 3;
  }

  // Method to determine grade based on average
  String getGrade
  (double average) {
    if (average >= 80) {
      return 'A';
    } else if (average >= 70) {
      return 'B';
    } else if (average >= 60) {
      return 'C';
    } else if (average >= 50) {
      return 'D';
    } else {
      return 'F';
    }
  }

  // Method to display student details
  void displayResult() {
    double average = calculateAverage();
    String grade = getGrade(average);

    print('\n--- Student Report ---');
    print('Name: $name');
    print('Subject 1: $score1');
    print('Subject 2: $score2');
    print('Subject3: $score3');
    print('Average Marks: ${average.toStringAsFixed(2)}');
    print('Grade: $grade');
  }
}

void main() {
  // defining students details
  Student student = Student(
    name: 'Emaru Scovia',
    score1: 85,
    score2: 90,
    score3: 78,
  );

  // Display results
  student.displayResult();
}

