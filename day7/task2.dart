class Person {
  String name;
  String address;

  Person(this.name, this.address) {
    print("Person Created: $name, Address: $address");
  }
}

class Student extends Person {
  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];

  Student(String name, String address) : super(name, address);

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses = courses.length;
  }

  void printGrades() {
    for (int i = 0; i < courses.length; i++) {
      print('${courses[i]}: ${grades[i]}');
    }
  }

  double getAverageGrades() {
    double sum = 0;

    for (int grade in grades) {
      sum += grade;
    }
    return sum / grades.length;
  }
}

class Teacher extends Person {
  int numCourses = 0;
  List<String> courses = [];

  Teacher(String name, String address) : super(name, address);

  bool addCourse(String course) {
    for (int i = 0; i < courses.length; i++) {
      if (courses[i] == course) {
        print("$course Course already exists.");
        return false;
      }
    }
    courses.add(course);
    numCourses = courses.length;
    print("$course Course added successfully.");
    print("Number of courses: $numCourses");
    return true;
  }

  bool removeCourse(String course) {
    for (int i = 0; i < courses.length; i) {
      if (courses[i] == course) {
        courses.remove(course);
        print("$course Course removed successfully.");
        numCourses = courses.length;
        return true;
      }
    }
    print("$course Course not found.");
    return false;
  }
}

void main() {
  Teacher teacher = Teacher('Mohamed Elghazaly', 'Tanta, Egypt');
  teacher.addCourse('Math');
  teacher.addCourse('Science');
  print('Number of Courses: ${teacher.numCourses}');

  Student student = Student('Amir Khairy', 'Tanta, Egypt');
  student.addCourseGrade('Math', 85);
  student.addCourseGrade('Science', 92);
  student.printGrades();
  print('Average Grade: ${student.getAverageGrades()}');
  teacher.removeCourse('Math');
  teacher.addCourse('History');
}
