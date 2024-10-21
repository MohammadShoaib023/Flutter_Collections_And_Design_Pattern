import 'house.dart';
import 'house_builder.dart';

class ConcreteHouseBuilder implements HouseBuilder {
  final House _house = House();

  @override
  void buildFoundation() {
    _house.foundation = "Concrete Foundation";
  }

  @override
  void buildStructure() {
    _house.structure = "Concrete Structure";
  }

  @override
  void buildRoof() {
    _house.roof = "Concrete Roof";
  }

  @override
  void paintHouse() {
    _house.painted = true;
  }

  @override
  House getHouse() {
    return _house;
  }
}