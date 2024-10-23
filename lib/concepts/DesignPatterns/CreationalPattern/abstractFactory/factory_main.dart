
import 'abstract_factory.dart';
import 'application.dart';

void main() {
  GUIFactory factory;

  // Based on some condition, we can choose the theme
  String theme = 'dark';  // or 'light'

  if (theme == 'light') {
    //factory = LightFactory();  // Correct instantiation as a class, not a function
  } else {
    //factory = DarkFactory();  // Correct instantiation as a class
  }

  // Application app = Application(factory);
  // app.createUI();  // This will render components from the chosen theme
}

