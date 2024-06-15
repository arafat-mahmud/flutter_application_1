import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  int value = 0;
  Increment() {
    value++;
    notifyListeners(); // It is faster to call
  }
}
