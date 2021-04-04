import 'dart:collection';

import 'package:flutter/material.dart';

class DropdownText with ChangeNotifier {
  static final _list =
      ['Pasta', 'Pizza', 'Maccheroni'].map<DropdownMenuItem<String>>((item) {
    return DropdownMenuItem<String>(
      value: item,
      child: Text(item),
    );
  }).toList();

  final menuItems = UnmodifiableListView(_list);

  var _text = 'Pasta';
  String get text => _text;

  void setText(String? value) {
    _text = value ?? '';
    notifyListeners();
  }
}
