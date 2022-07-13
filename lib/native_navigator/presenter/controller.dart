import 'package:flutter/cupertino.dart';

class PageTestController {
  final String cnt;
  PageTestController(this.cnt);
}

class PageGlobalController extends ChangeNotifier {
  int cnt = 0;
  PageGlobalController(this.cnt);
  void increment() {
    cnt++;
    notifyListeners();
  }
}
