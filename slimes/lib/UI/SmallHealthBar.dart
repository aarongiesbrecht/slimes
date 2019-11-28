import 'package:flutter/material.dart';

class SmallHealthBar extends StatefulWidget {
  
  //health MUST be passed a double between 0-1
  final double health;
  SmallHealthBar(this.health);

  @override
  _SmallHealthBarState createState() => _SmallHealthBarState();
}

class _SmallHealthBarState extends State<SmallHealthBar> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.grey[500],
        child: Container(
          decoration: BoxDecoration(
              color: Colors.red[600],
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          alignment: Alignment.centerLeft,
          child: FractionallySizedBox(
          heightFactor: 1,
          widthFactor: widget.health,
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