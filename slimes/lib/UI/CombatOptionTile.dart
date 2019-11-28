import 'package:flutter/material.dart';

import './CharacterTile.dart';

class CombatMenuTile extends StatelessWidget {
  
  final String optionName;
  final VoidCallback onTap;

  const CombatMenuTile(this.optionName, this.onTap);

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.grey[500],
      child: new GestureDetector(
        onTap: () => onTap(),
        child:  Container(
          //TODO will require characer values to be passed in
          child: CharacterTile(),
        ),
      ),
    );
  }
}