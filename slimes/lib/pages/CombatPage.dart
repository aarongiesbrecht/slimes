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
  new Move('_name0', 10),
  new Move('_name1', 10),
  new Move('_name2', 10),
  new Move('_name3', 10),
  new Move('_name4', 10),
  new Move('_name5', 10),
];
List<Slime> chars = [
  new Slime('fire', 'anima', 50, moves),
  new Slime('fire', 'anima', 60, moves),
  new Slime('fire', 'anima', 30, moves),
  new Slime('fire', 'anima', 70, moves),
  new Slime('fire', 'anima', 20, moves),
  new Slime('fire', 'anima', 50, moves),
];
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
                  child: CombatMenu(chars),
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