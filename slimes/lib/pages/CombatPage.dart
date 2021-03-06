//
//* Main combat screen */
//
// this page is intended to house all data needed for an entire combat sequence.
// it recieves the following from its parent page in order to do that"
//    player team list (currently using temp data)
//    dungeon room list (consists of each enemy team for current sequence,
//      currently using temp data for single enemy)
//

import 'package:flutter/material.dart';

import '../UI/CombatMenu.dart';
import '../utils/Move.dart';
import '../entities/friendly/Slime.dart';

class CombatPage extends StatefulWidget {
  @override
  State createState() => CombatPageState();
}

//! temp character data !
List<Move> moves = [
  new Move('move_0', 10),
  new Move('move_1', 20),
  new Move('move_2', 30),
  new Move('move_3', 50),
  new Move('move_4', 100),
  new Move('move_5', 500),
];
List<Slime> chars = [
  new Slime('steve', 'fire', 'anima', 50, moves),
  new Slime('ciri', 'water', 'anima', 60, moves),
  new Slime('kevin', 'grass', 'anima', 30, moves),
  new Slime('eris', 'lightning', 'anima', 70, moves),
  new Slime('shaxx', 'light', 'anima', 20, moves),
  new Slime('sagira', 'dark', 'anima', 50, moves),
];
Slime tempHostile = new Slime('cheese', 'fire', 'gaurdian', 1500, moves);
//!!

//navbar items
List itemBar = <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
  BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text('items')),

];

class CombatPageState extends State<CombatPage> {
  Widget build(BuildContext context) {
    return new Material(
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          title: Text('current dungeon + progress'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              //TODO this should be a custom game window item
              child: Center(
                child: Container(
                  child: Text('game window'),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  child: CombatMenu(chars, tempHostile),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[800],
          items: itemBar,
          ),  
      ),
    );
  }
}