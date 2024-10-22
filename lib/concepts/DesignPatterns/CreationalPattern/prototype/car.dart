
import 'prototype.dart';

class Car implements Prototype {
  String model;
  String color;

  Car(this.model, this.color);

  @override
  Car clone() {
    return Car(model, color);
  }

  @override
  String toString() {
    return 'Car(model: $model, color: $color)';
  }
}
