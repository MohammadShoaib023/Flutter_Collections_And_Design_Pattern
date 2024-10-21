import 'house.dart';

abstract class HouseBuilder {
  void buildFoundation();
  void buildStructure();
  void buildRoof();
  void paintHouse();

  House getHouse();
}