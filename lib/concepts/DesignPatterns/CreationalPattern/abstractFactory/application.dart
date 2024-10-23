import '../factory_method.dart';

class Application {
  final GUIFactory factory;

  Application(this.factory);

  void createUI() {
    final button = factory.createButton();
    final checkbox = factory.createCheckbox();
    button.paint();
    checkbox.paint();
  }
}
