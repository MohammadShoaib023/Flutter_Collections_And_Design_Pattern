import 'car.dart';

void main() {
  // Create an original car object
  Car originalCar = Car('Tesla Model S', 'Red');

  // Clone the original car to create a new car
  Car clonedCar = originalCar.clone();

  // Print both cars
  print('Original Car: $originalCar');
  print('Cloned Car: $clonedCar');

  // Modify the cloned car without affecting the original
  clonedCar.color = 'Blue';

  // Print both cars again to see the difference
  print('After modifying the cloned car:');
  print('Original Car: $originalCar');
  print('Cloned Car: $clonedCar');
}
