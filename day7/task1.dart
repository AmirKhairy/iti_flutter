void main() {
  Rectangle rectangle = Rectangle(height: 5.0, width: 3.0);

  print("Rectangle Color: ${rectangle.color}");
  print("Rectangle Filled: ${rectangle.filled}");
  print("Rectangle Height: ${rectangle.height} units");
  print("Rectangle Width: ${rectangle.width} units");
  print("Rectangle Area: ${rectangle.getArea()} square units");
  print("Rectangle Perimeter: ${rectangle.getPerimeter()} units");

  Circle circle = Circle(radius: 2.0);

  print("Circle Color: ${circle.color}");
  print("Circle Filled: ${circle.filled}");
  print("Circle Radius: ${circle.radius} units");
  print("Circle Area: ${circle.getArea()} square units");
  print("Circle Perimeter: ${circle.getPerimeter()} units");
}

abstract class Shape {
  String color;
  bool filled;

  Shape({this.color = "white", this.filled = false});

  double getArea();
  double getPerimeter();
}

class Rectangle extends Shape {
  double height;
  double width;

  Rectangle({this.height = 1.0, this.width = 1.0});

  @override
  double getArea() {
    return height * width;
  }

  @override
  double getPerimeter() {
    return 2 * (height + width);
  }
}

class Circle extends Shape {
  double radius;

  Circle({this.radius = 1.0});

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }

  @override
  double getPerimeter() {
    return 2 * 3.14 * radius;
  }
}
