import 'house.dart';
import 'house_builder.dart';

class HouseDirector {
  final HouseBuilder _builder;

  HouseDirector(this._builder);

  House constructHouse() {
    _builder.buildFoundation();
    _builder.buildStructure();
    _builder.buildRoof();
    _builder.paintHouse();
    return _builder.getHouse();
  }
}