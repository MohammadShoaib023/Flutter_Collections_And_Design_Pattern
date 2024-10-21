import 'house.dart';
import 'house_builder.dart';

class WoodenHouseBuilder implements HouseBuilder {
  final House _house = House();

  @override
  void buildFoundation() {
    _house.foundation = "Wooden Foundation";
  }

  @override
  void buildStructure() {
    _house.structure = "Wooden Structure";
  }

  @override
  void buildRoof() {
    _house.roof = "Wooden Roof";
  }

  @override
  void paintHouse() {
    _house.painted = false; // Natural look
  }

  @override
  House getHouse() {
    return _house;
  }
}