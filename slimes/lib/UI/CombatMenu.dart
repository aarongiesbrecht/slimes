import 'package:flutter/material.dart';

import './CombatOptionTile.dart';
import '../utils/Move.dart';
import '../entities/friendly/Slime.dart';
import '../UI/SmallHealthBar.dart';

class CombatMenu extends StatelessWidget {
  
  //! TODO vars needed
  //* char list
  //* enemy list
  //* dungeon info (loc, rooms, enemy split)

  //! remove !
  // these are temporary classes functioning as placeholder in order
  // to test the menus functions more realistically

  void onTap(int index) {
    print('tap registered on index: $index');
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.grey[600],
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.grey[500],
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              //TODO impliment enemy name and overlay over dynamic health bar
              child: Text('selected enemy name + health'),
            ),
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: 3.1,
              children: <Widget>[
                new CombatMenuTile('one', () => onTap(1)),
                new CombatMenuTile('two', () => onTap(2)),
                new CombatMenuTile('three', () => onTap(3)),
                new CombatMenuTile('four', () => onTap(4)),
                new CombatMenuTile('five', () => onTap(5)),
                new CombatMenuTile('six', () => onTap(6)),
              ],
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.end
      ),  
    );
  }
}