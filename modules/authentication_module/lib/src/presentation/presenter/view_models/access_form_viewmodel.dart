import 'package:flutter/material.dart';

class AccessFormViewModel extends ChangeNotifier {
  /* *** *** Constructor *** *** */
  AccessFormViewModel();
  /* *** *** Variables *** *** */
  bool _loading = false;

  /* *** *** Setters *** *** */
  set loading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  /* *** *** Getters *** *** */
  bool get loading => _loading;
}
