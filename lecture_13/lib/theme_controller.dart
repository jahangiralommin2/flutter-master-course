import 'package:flutter/material.dart';

class ThemeModel with ChangeNotifier {
  ThemeMode _mode;
  ThemeMode get mode => _mode;
  ThemeModel({ThemeMode mode = ThemeMode.light}) : _mode = mode;
  bool isSwitch = false;

  isTroggle() {
    if (_mode == ThemeMode.light) {
      return isSwitch = false;
    }
    if (_mode == ThemeMode.dark) {
      return isSwitch = true;
    }

  }

  void toggleMode() {
    _mode = _mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}