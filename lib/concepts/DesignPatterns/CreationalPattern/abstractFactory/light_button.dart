import '../factory_method.dart';

class LightButton implements Button {
  @override
  void paint() => print('Render a light button');
}

class DarkButton implements Button {
  @override
  void paint() => print('Render a dark button');
}

class LightCheckbox implements Checkbox {
  @override
  void paint() => print('Render a light checkbox');
}

class DarkCheckbox implements Checkbox {
  @override
  void paint() => print('Render a dark checkbox');
}
