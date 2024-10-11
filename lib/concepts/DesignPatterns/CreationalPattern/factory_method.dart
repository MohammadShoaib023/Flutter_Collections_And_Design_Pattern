import 'package:flutter/foundation.dart';

// Factory is a creational design pattern, which is used to create products.
// Abstract Factory is a creational design pattern,
// which solves the problem of creating entire product families without specifying their concrete classes.

abstract class Button {
  void paint();
}

class MacOSButton implements Button {
  @override
  void paint() {
    if (kDebugMode) {
      print("Painting MacOSButton");
    }
  }
}

class WindowsButton implements Button {
  @override
  void paint() {
    if (kDebugMode) {
      print("Painting WindowsButton");
    }
  }
}

abstract class Checkbox {
  void paint();
}

class MacOSCheckbox implements Checkbox {
  @override
  void paint() {
    if (kDebugMode) {
      print("Painting MacOSCheckbox");
    }
  }
}

class WindowsCheckbox implements Checkbox {
  @override
  void paint() {
    if (kDebugMode) {
      print("Painting WindowsCheckbox");
    }
  }
}

abstract class GUIFactory {
  Button createButton();
  Checkbox createCheckbox();
}

class MacOSFactory implements GUIFactory {
  @override
  Button createButton() => MacOSButton();
  @override
  Checkbox createCheckbox() => MacOSCheckbox();
}

class WindowsFactory implements GUIFactory {
  @override
  Button createButton() => WindowsButton();
  @override
  Checkbox createCheckbox() => WindowsCheckbox();
}
