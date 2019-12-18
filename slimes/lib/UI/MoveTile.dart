import 'package:flutter/material.dart';

class MoveTile extends StatelessWidget {
  
  
  
  const MoveTile();

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
              FractionallySizedBox(
                alignment: Alignment.topLeft,
                child: Text('move name'),
              ),
              //!damage
              FractionallySizedBox(
                alignment: Alignment.topRight,
                child: Text('damage'),
              ),
              //!move points
              FractionallySizedBox(
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