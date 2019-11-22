import 'package:flutter/material.dart';

import './CombatOptionTile.dart';

class CombatMenu extends StatelessWidget {
  
  //! TODO vars needed
  // * enemy list (2d list, sorted by room in current dungeon)
  // * player team (new list created from existing roster
  // *  this is done so that we can adjust health as needed)
  // * dungeon info (loc, rooms, art)

  //const CombatMenu({});

  void onTap() {
    print('temp call');
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
              //! TODO impliment enemy name and overlay over dynamic health bar
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
                new CombatMenuTile('one', onTap),
                new CombatMenuTile('two', onTap),
                new CombatMenuTile('three', onTap),
                new CombatMenuTile('four', onTap),
                new CombatMenuTile('five', onTap),
                new CombatMenuTile('six', onTap),
              ],
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.end
      ),  
    );
  }
}