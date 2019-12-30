import 'package:flutter/material.dart';
import 'package:slimes/UI/MoveTile.dart';

import './CharacterTile.dart';
import '../entities/friendly/Slime.dart';
import '../utils/Move.dart';

class CombatMenuTile extends StatefulWidget {
  
  final String _optionName;
  final VoidCallback _onTap;
  final bool _tileType;
  final int _selectedMove;
  final Slime _char;
  final List <Move> _moves;

  const CombatMenuTile(this._optionName, this._onTap, this._tileType, this._selectedMove, this._char, this._moves);

  @override
  State createState() => CombatMenuTileState();

}

class CombatMenuTileState extends State<CombatMenuTile> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: widget._tileType ? 
      //char tile
      Container(
        color: Colors.grey[500],
        child: new GestureDetector(
          onTap: () => widget._onTap(),
          child:  Container(
            child: CharacterTile(widget._char.formattedHealth),
          ),
        ),
      ) 
      : //split between two types
      //move tile
      Container(
        color: Colors.grey[500],
        child: new GestureDetector(
          onTap: () => widget._onTap(),
          child: Container(
            //child: MoveTile(widget._char.move(widget._selectedMove).name, widget._char.move(widget._selectedMove).damage),
            child: MoveTile(widget._moves[widget._selectedMove].name, widget._moves[widget._selectedMove].damage),
          ),
        ),
      ),
    );
  }
}