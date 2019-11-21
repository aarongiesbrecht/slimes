import 'package:flutter/material.dart';

import '../UI/CombatMenu.dart';

class CombatPage extends StatefulWidget {
  @override
  State createState() => CombatPageState();
}

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
              //! TODO this should be a custom game window item
              child: Center(
                child: Container(
                  child: Text('game window'),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  child: CombatMenu(),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: itemBar,
          ),  
      ),
    );
  }
}