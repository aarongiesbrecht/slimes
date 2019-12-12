import 'package:flutter/material.dart';

import './CharacterTile.dart';
import '../entities/friendly/Slime.dart';

class CombatMenuTile extends StatefulWidget {
  
  final String _optionName;
  final VoidCallback _onTap;
  final bool _tileType;
  final Slime _char;

  const CombatMenuTile(this._optionName, this._onTap, this._tileType, this._char);

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
            //TODO will require characer values to be passed in
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
            //TODO will require move data to be passed in, using temp for now

          ),
        ),
      ),
    );
  }
}