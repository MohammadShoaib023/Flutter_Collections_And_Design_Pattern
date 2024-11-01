import 'rendere_interface.dart';

class RasterRenderer implements Renderer {
  @override
  void renderCircle(double radius) {
    print("Drawing circle of radius $radius using Raster rendering.");
  }

  @override
  void renderSquare(double side) {
    print("Drawing square of side $side using Raster rendering.");
  }
}
