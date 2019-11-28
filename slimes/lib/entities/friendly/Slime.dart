//*
// simple class to contain all character data
// for the players characters
// will not have a widget component as is just data storage
//*

import '../../utils/Move.dart';

class Slime {

  // required data:
  final int hp;
  final String type;
  final String element;
  final List<Move>  moves;
  int currentHp;

  //init function
  Slime(this.element, this.type, this.hp, this.moves);

  //non user input data
  void main() {
    currentHp = hp;
  }

  //getters
  int get maxHealth { 
    return this.hp;
  }
  int get currentHealth {
    return this.currentHp;
  }
  //setters

}