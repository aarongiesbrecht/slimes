import 'package:flutter/material.dart';

class SmallHealthBar extends StatefulWidget {
  
  //health MUST be passed a double between 0-1
  final double _health;
  SmallHealthBar(this._health);

  @override
  _SmallHealthBarState createState() => _SmallHealthBarState();
}

class _SmallHealthBarState extends State<SmallHealthBar> {

  //vars depend based on targets current life
  static Color livingBG = Colors.grey[500];
  static Color deadBG = Colors.grey[700];

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: widget._health>0 ? livingBG : deadBG,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          alignment: Alignment.centerLeft,
          child: FractionallySizedBox(
          heightFactor: 1,
          widthFactor: widget._health,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),      
        ),
      ),
    );
  }
}