//*
// simple class to contain all character data
// for the players characters
// will not have a widget component as is just data storage
//*

import 'package:flutter/cupertino.dart';

import '../../utils/Move.dart';

class Slime {

  // required data:
  final String _name;
  final int _maxHealth;          // max available hp
  final String _type;            // anima, gaurdian, oracle, etc (determins stats)
  final String _element;         // grass, water, fire, etc
  final List<Move>  _moves;      // list of moves from move class
  int _currentHealth;            // dynamic health

  //init function
  Slime(@required this._name, @required this._element, @required this._type, @required this._maxHealth, @required this._moves) {
    _currentHealth = _maxHealth;  
  }

  main() {
    _currentHealth = _maxHealth;
  }
  //getters
  int get maxHealth { 
    return this._maxHealth;
  }
  int get currentHealth {
    return this._currentHealth;
  }
  double get formattedHealth {
    return this._currentHealth / this._maxHealth;
  }
  String get element {
    return this._element;
  }
  String get type {
    return this._type;
  }
  Move move(int move) {
    return this._moves[move];
  }
  List<Move> get moves {
   return this._moves;
  }
  //setters
  void damage(int dmg) {
    if (this._currentHealth - dmg <= 0) {
      this._currentHealth = 0;
    }else {
      this._currentHealth -= dmg;
    }
  }
}