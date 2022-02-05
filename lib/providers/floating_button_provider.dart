import 'package:flutter/material.dart';

class FloatingButtonProvider extends ChangeNotifier {
  bool _isContactPage = false;

  bool get isContactPage => _isContactPage;

  void setContactPage(bool value) {
    _isContactPage = value;
    notifyListeners();
  }
}
