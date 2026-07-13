//Group Members:
// 1. Name: Munyaneza yassin   Student ID: BBICTR/2024/47538
// 2. Name: Gihozo kellia   Student ID: BBICTR/2024/44711
// 3. Name: Robert Rukundo   Student ID: BBICTR/2024/48686
// 4. Name: Niyonizera manzi kevin   Student ID: BBICTR/2024/47207
// 5. Name: Berwa Dela joie Ines   Student ID: BBICTR/2024/48199

// Abstract class
abstract class Shape {
  double area();
  double perimeter();
}

// Mixin
mixin Printable on Shape {
  void printDetails() {
    print("Shape: $runtimeType");
    print("Area: ${area()}");
    print("Perimeter: ${perimeter()}");
  }
}

// Rectangle class
class Rectangle extends Shape with Printable {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }

  @override
  double perimeter() {
    return 2 * (length + width);
  }
}

// Triangle class
class Triangle extends Shape with Printable {
  double base;
  double height;
  double side1;
  double side2;

  Triangle(this.base, this.height, this.side1, this.side2);

  @override
  double area() {
    return 0.5 * base * height;
  }

  @override
  double perimeter() {
    return base + side1 + side2;
  }
}

void main() {
  Rectangle rectangle = Rectangle(10, 5);

  Triangle triangle = Triangle(6, 4, 5, 5);

  rectangle.printDetails();

  print("");

  triangle.printDetails();
}
