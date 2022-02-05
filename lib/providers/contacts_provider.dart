import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:permission_handler/permission_handler.dart';

class ContactProvider extends ChangeNotifier {
  ContactProvider() {
    getContacts();
  }

  List<Contact> _contacts = [];
  final Permission _permission = Permission.contacts;

  List<Contact> get contacts => _contacts;
  bool _isLoading = false;

  bool get isLoading => _isLoading;
  bool _isPermissionDenied = false;

  bool get isPermissionDenied => _isPermissionDenied;

  Future<void> getContacts() async {
    _isLoading = true;
    if (await _permission.isGranted) {
      List<Contact> contacts = await FlutterContacts.getContacts();
      _contacts = contacts;
      _isPermissionDenied = false;
      _isLoading = false;
      notifyListeners();
    } else {
      _contacts = [];
      _isPermissionDenied = true;
      _isLoading = false;
      notifyListeners();
    }
  }
}

// lets check whether the permission is added or not
// now we can run and check
// lets check why it is not working
// we have to one more permission

// its working lets uninstall the previous app and retry
// we are having problem in getting permission so let use permission handler
// lets re install the app and check
// now its good working
// lets check by removing permission and get the permission again
// we have to run once again
// this time we have removed permission