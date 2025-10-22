//question 2
// create a dart program that accepts a student's  name and scores for three subjects 
//without using a list  but using class properties on the class and the properties must be nullable with a default value, 
//to ensure that we do not have any null pointer exceptions.

class Student {
  // Required attributes
  String name;
  double score1;
  double score2;
  double score3;


  // Constructor with default values to avoid null pointer exceptions
  Student({
  this.name = "scovia",
  this.score1 = 80,
  this.score2 = 70,
  this.score3 = 60});

  // Method to calculate average
  double calculateAverage() {
    return (score1 + score2 + score3) / 3;
  }

  // Method to display details
  void displayInfo() {
    print("Student Name: $name");
    print("Score 1: $score1");
    print("Score 2: $score2");
    print("Score 3: $score3");
    print("Average Score: ${calculateAverage()}");
  }
}

void main() {
  // Example input 
  Student student = Student(name: "Emaru Scovia", score1: 80, score2: 70, score3: 60);

  student.displayInfo();
}
