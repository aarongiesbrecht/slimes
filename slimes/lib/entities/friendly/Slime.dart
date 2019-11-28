//*
// simple class to contain all character data
// for the players characters
// will not have a widget component as is just data storage
//*

import '../../utils/Move.dart';

class Slime {

  // required data:
  final int _maxHealth;          // max available hp
  final String _type;            // anima, gaurdian, oracle, etc (determins stats)
  final String _element;         // grass, water, fire, etc
  final List<Move>  _moves;      // list of moves from move class
  int _currentHealth;            // dynamic health

  //init function
  Slime(this._element, this._type, this._maxHealth, this._moves);

  //non user input data
  void main() {
    _currentHealth = _maxHealth;
  }

  //getters
  int get maxHealth { 
    return this._maxHealth;
  }
  int get currentHealth {
    return this._currentHealth;
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
}