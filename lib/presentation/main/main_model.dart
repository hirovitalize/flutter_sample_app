import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String okazakiText = '岡崎';

  void changeOkazakiText() {
    okazakiText = '岡﨑バッチバチやん！';
    notifyListeners();
  }
}