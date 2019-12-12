import 'package:flutter/material.dart';

import './SmallHealthBar.dart';


class CharacterTile extends StatelessWidget {

  final double _health;

  const CharacterTile(@required this._health);

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Container(
        padding: EdgeInsets.all(5),
        color: Colors.grey[700],
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey,
          child: Stack(
            children: <Widget>[
              FractionallySizedBox(
                widthFactor: 0.3,
                heightFactor: 1,
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text('char\navatar'),
                  color: Colors.blue,
                ),
              ),  
              Container(
                alignment: Alignment.topRight,
                child: Text('char name'),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: FractionallySizedBox(
                  widthFactor: .6,
                  heightFactor: .3,
                  child: Container(
                    child: SmallHealthBar(_health),
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}