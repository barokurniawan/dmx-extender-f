import 'dart:ffi';

import 'package:flutter/material.dart';

class ResultController extends ChangeNotifier {
  bool isResultState = false;

  Future<void> setResultState(bool state) async {
    isResultState = state;
    notifyListeners();
  }
}
