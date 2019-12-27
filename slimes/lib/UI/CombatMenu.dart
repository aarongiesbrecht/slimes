import 'package:flutter/material.dart';
import 'package:slimes/UI/CharacterTile.dart';

import './CombatOptionTile.dart';
import '../utils/Move.dart';
import '../entities/friendly/Slime.dart';
import '../UI/SmallHealthBar.dart';
import '../UI/LargeHealthBar.dart';

class CombatMenu extends StatefulWidget {
  
  //! TODO vars needed
  //* enemy list
  //* dungeon info (loc, rooms, enemy split)
  final List<Slime> chars;
  final Slime _tmpEnemy;
  
  CombatMenu(this.chars, this._tmpEnemy);
  @override
  State createState() => CombatMenuState();
}

class CombatMenuState extends State<CombatMenu> {

  //determines the move tile based on char
  static int _selectedMove = 0;
  static int _selectedChar = 0;
  //state controls whether menu shows chars or moves
  //true == char selected tile type
  static bool _selectedTile = true;

  //local ontap method
  void _onTap(int index) {
    setState(() {
      _selectedMove = index;
      //widget.chars[index].damage(10);   ref code for later
      //swaps screen to selected chars moves.
      if (_selectedTile) {
        print('swapped all tiles to move data for char $index');
        _selectedChar = index;
        _selectedTile = false;
      }else {
        print('move used');
        widget._tmpEnemy.damage(widget.chars[_selectedChar].move(index).damage);
        int _dmg = widget.chars[_selectedChar].move(index).damage;
        print('$_dmg dealt');
        _selectedTile = true;
      }
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
                //TODO pass in enemy name data
                child: LargeHealthBar(widget._tmpEnemy.formattedHealth),
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
                new CombatMenuTile('one', () => _onTap(0), _selectedTile, _selectedMove, widget.chars[0], <Move>[
                  widget.chars[0].move(0),
                  widget.chars[1].move(0),
                  widget.chars[2].move(0),
                  widget.chars[3].move(0),
                  widget.chars[4].move(0),
                  widget.chars[5].move(0),
                ]),
                new CombatMenuTile('two', () => _onTap(1), _selectedTile, _selectedMove, widget.chars[1], <Move>[
                  widget.chars[0].move(1),
                  widget.chars[1].move(1),
                  widget.chars[2].move(1),
                  widget.chars[3].move(1),
                  widget.chars[4].move(1),
                  widget.chars[5].move(1),
                ]),
                new CombatMenuTile('three', () => _onTap(2), _selectedTile, _selectedMove, widget.chars[2], <Move>[
                  widget.chars[0].move(2),
                  widget.chars[1].move(2),
                  widget.chars[2].move(2),
                  widget.chars[3].move(2),
                  widget.chars[4].move(2),
                  widget.chars[5].move(2),
                ]),
                new CombatMenuTile('four', () => _onTap(3), _selectedTile, _selectedMove, widget.chars[3], <Move>[
                  widget.chars[0].move(3),
                  widget.chars[1].move(3),
                  widget.chars[2].move(3),
                  widget.chars[3].move(3),
                  widget.chars[4].move(3),
                  widget.chars[5].move(3),
                ]),
                new CombatMenuTile('five', () => _onTap(4), _selectedTile, _selectedMove, widget.chars[4], <Move>[
                  widget.chars[0].move(4),
                  widget.chars[1].move(4),
                  widget.chars[2].move(4),
                  widget.chars[3].move(4),
                  widget.chars[4].move(4),
                  widget.chars[5].move(4),
                ]),
                new CombatMenuTile('six', () => _onTap(5), _selectedTile, _selectedMove, widget.chars[5], <Move>[
                  widget.chars[0].move(5),
                  widget.chars[1].move(5),
                  widget.chars[2].move(5),
                  widget.chars[3].move(5),
                  widget.chars[4].move(5),
                  widget.chars[5].move(5),
                ]),
              ],
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.end
      ),  
    );
  }
}