//basic class to hold a moves dmg value and name

import 'package:flutter/cupertino.dart';

class Move {

  final String _name;
  final int _damage;

  Move(@required this._name, @required this._damage);

  String get name {
    return this._name;
  }
  int get damage {
    return this._damage;
  }
}