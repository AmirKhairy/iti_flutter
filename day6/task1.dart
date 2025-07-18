// Create a Circle class, that includes the following
// Attributes
// String color – double radius
// Methods
// getRadius(): return type double
// getColor(): return type String
// setRadius(double radius) : return type void
// setColor(String color) : return type void
// getArea() : return type double -> equation = 3.14 * radius * radius
// getCircumference() : return type double -> equation = 2 * 3.14 * radius


void main() {
  Circle circle = Circle();
  circle.setRadius(5.0);
  circle.setColor("Red");

  print("Circle Radius: ${circle.getRadius()} units");
  print("Circle Color: ${circle.getColor()}");
  print("Circle Area: ${circle.getArea()} square units");
  print("Circle Circumference: ${circle.getCircumference()} units");
}

class Circle {
  String? color;
  double? radius;

  double getRadius() {
    return radius!;
  }

  String getColor() {
    return color!;
  }

  void setRadius(double radius) {
    this.radius = radius;
  }

  void setColor(String color) {
    this.color = color;
  }

  double getArea() {
    return 3.14 * radius! * radius!;
  }

  double getCircumference() {
    return 2 * 3.14 * radius!;
  }
}
