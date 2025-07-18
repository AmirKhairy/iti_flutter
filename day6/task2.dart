// Create a Employee class, that includes the following
// Attributes
// Int id- String firstName – String lastName – int salary
// Methods
// getId() – getFirstName() – getLastName() – getFullName() – getSalary()
// setSalary(double int)
// getAnularSalary() : return type int
// raiseSalary(int percent) : return type double
// Increase the salary by the percent given and return the new salary

void main() {
  Employee employee = Employee(1, "Amir", "Khairy", 10000);
  print("Employee ID: ${employee.getId()}");
  print("Employee First Name: ${employee.getFirstName()}");
  print("Employee Last Name: ${employee.getLastName()}");
  print("Employee Full Name: ${employee.getFullName()}");
  print("Employee Salary: ${employee.getSalary()}");
  print("Employee Annual Salary: ${employee.getAnnualSalary()}");
  print("Employee Salary after raising 10%: ${employee.raiseSalary(20)}");
}

class Employee {
  int? id;
  String? firstName;
  String? lastName;
  int? salary;
  Employee(this.id, this.firstName, this.lastName, this.salary);

  int getId() {
    return id!;
  }

  String getFirstName() {
    return firstName!;
  }

  String getLastName() {
    return lastName!;
  }

  String getFullName() {
    return "$firstName $lastName";
  }

  int getSalary() {
    return salary!;
  }

  void setSalary(int salary) {
    this.salary = salary;
  }

  int getAnnualSalary() {
    return salary! * 12;
  }

  double raiseSalary(int percent) {
    double newSalary = salary! + salary! * (percent / 100);
    setSalary(newSalary.toInt());
    return newSalary;
  }
}
