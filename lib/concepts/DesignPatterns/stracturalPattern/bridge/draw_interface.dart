import 'rendere_interface.dart';

abstract class Shape {
  Renderer renderer; // Bridge reference

  Shape(this.renderer);

  void draw(); // Abstract draw method
}
