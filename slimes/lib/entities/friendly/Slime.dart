//*
// simple class to contain all character data
// for the players characters
// will not have a widget component as is just data storage
//*

class Slime {

  // required data:
  int health;
  final String type;
  final String element;
  // moves are split into dmg/name lists
  // as tuple are apperently not a thing in dart?
  final List<int> movesDamage;
  final List<String> movesName;

  //init function
  Slime(this.element, this.type, this.health, this.movesDamage, this.movesName)



}