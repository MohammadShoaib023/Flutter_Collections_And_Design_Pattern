import 'package:flutter/foundation.dart';

// Creational Pattern - Singleton Pattern

// Singleton pattern - creates a single instance of a class and prevents the creation of multiple instances

// Why use Singleton pattern?

// Global access: It allows you to access the same object from anywhere in the application.

// Resource management: It is useful for resource management like database connection, where we only need one connection to avoid problems.

// If you allow multiple objects to be created (without using Singleton pattern), you may face problems like:

// Multiple connections to the database, which leads to high resource consumption.

// Inconsistent state if different objects hold different data.

// More complexity in memory management and object lifecycle.
// Conclusion:
// In your code, even if you create two variables (db1 and db2), both of them refer to the same object.
//
// So, there is no negative impact of creating an "instance" because Singleton pattern ensures that only one object is created.

class DatabaseManager {
  // create instanse of DatabaseManager from the private constructor
  static final DatabaseManager _instance = DatabaseManager._internal();

  // private constructor
  DatabaseManager._internal();

  // method to get the instance
  static DatabaseManager get instance => _instance;

// method to connect to the database
  void connect() {
    if (kDebugMode) {
      print("Connected to the database");
    }
  }
}

void main() {
  // get the same instance twice
  DatabaseManager db1 = DatabaseManager.instance;
  DatabaseManager db2 = DatabaseManager.instance;

  db1.connect(); // output: Connected to the database

  // check if the instances are equal
  if (kDebugMode) {
    print(db1 == db2);
  } // output: true
}
