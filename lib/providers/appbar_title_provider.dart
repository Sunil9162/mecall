import 'package:flutter/material.dart';

class AppBarTitleProvider extends ChangeNotifier {
  final List<String> _titles = [
    "Calls",
    "Contacts",
  ];

  String _title = "Calls";

  String get getRTitle => _title;

  void setTitle(int page) {
    _title = _titles[page];
    notifyListeners();
  }
}
