import 'package:flutter/material.dart';

class MoveTile extends StatelessWidget {
  
  final String _name;
  final int _dmg;
  
  const MoveTile(this._name, this._dmg);

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Container(
        padding: EdgeInsets.all(5),
        color: Colors.grey[800],
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey[500],
          child: Stack(
            children: <Widget>[
              //!move name
              Container(
                alignment: Alignment.topLeft,
                child: Text(this._name),
              ),
              //!damage
              Container(
                alignment: Alignment.topRight,
                child: Text('damage: ${this._dmg}'),
              ),
              //!move points
              Container(
                alignment: Alignment.bottomRight,
                child: Text('move cost'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}