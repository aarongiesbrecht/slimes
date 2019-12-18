import 'package:flutter/material.dart';

import './CombatOptionTile.dart';
import '../utils/Move.dart';
import '../entities/friendly/Slime.dart';
import '../UI/SmallHealthBar.dart';
import '../UI/LargeHealthBar.dart';

class CombatMenu extends StatefulWidget {
  
  //! TODO vars needed
  //* enemy list
  //* dungeon info (loc, rooms, enemy split)
  //final List<Slime> chars;
  
  CombatMenu();
  @override
  State createState() => CombatMenuState();
}

class CombatMenuState extends State<CombatMenu> {

//! temp character data !
  static List<Move> moves = [
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

  //local ontap method
  void _onTap(int index) {
    setState(() {
      chars[index].damage(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.grey[600],
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.grey[500],
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                //TODO impliment enemy name and overlay over dynamic health bar
                child: LargeHealthBar(.6),
                //child: Text('test'),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: 3.1,
              children: <Widget>[
                new CombatMenuTile('one', () => _onTap(0), true, chars[0]),
                new CombatMenuTile('two', () => _onTap(1), true, chars[1]),
                new CombatMenuTile('three', () => _onTap(2), true, chars[2]),
                new CombatMenuTile('four', () => _onTap(3), true, chars[3]),
                new CombatMenuTile('five', () => _onTap(4), true, chars[4]),
                new CombatMenuTile('six', () => _onTap(5), true, chars[5]),
              ],
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.end
      ),  
    );
  }
}