
import 'package:flutter/cupertino.dart';

class ColorCounter extends ChangeNotifier{
  int _blueCount = 0;
  int _redCount = 0;

  int get blueCount => _blueCount;
  int get redCount => _redCount;

  void incrementBlue() {
    _blueCount++;
    notifyListeners();  // notify listener that state has chnage
  }

  void incrementRed() {
    _redCount++;
    notifyListeners();
  }
}
