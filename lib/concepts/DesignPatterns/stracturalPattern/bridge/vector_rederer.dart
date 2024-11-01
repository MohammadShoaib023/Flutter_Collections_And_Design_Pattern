import 'rendere_interface.dart';

class VectorRenderer implements Renderer {
  @override
  void renderCircle(double radius) {
    print("Drawing circle of radius $radius using Vector rendering.");
  }

  @override
  void renderSquare(double side) {
    print("Drawing square of side $side using Vector rendering.");
  }
}
