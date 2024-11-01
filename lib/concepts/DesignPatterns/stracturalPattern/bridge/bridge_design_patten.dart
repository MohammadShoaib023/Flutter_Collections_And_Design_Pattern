// Step 1: Define the Renderer interface (Implementation hierarchy)

// Step 2: Implement concrete Renderers (Implementations)

import 'draw_interface.dart';
import 'raster_renderer.dart';
import 'rendere_interface.dart';
import 'vector_rederer.dart';

// Step 3: Define the Shape abstraction (Abstraction hierarchy)

// Step 4: Create concrete Shapes (Abstractions)

// Step 5: Usage example
class Circle extends Shape {
  double radius;

  Circle(super.renderer, this.radius);

  @override
  void draw() {
    renderer.renderCircle(radius);
  }
}

class Square extends Shape {
  double side;

  Square(super.renderer, this.side);

  @override
  void draw() {
    renderer.renderSquare(side);
  }
}

// Step 5: Usage example
void main() {
  Renderer vectorRenderer = VectorRenderer();
  Renderer rasterRenderer = RasterRenderer();

  Shape circle = Circle(vectorRenderer, 5);
  Shape square = Square(rasterRenderer, 10);

  circle.draw();
  square.draw();
}
