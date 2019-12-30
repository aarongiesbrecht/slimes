import 'package:flutter/material.dart';

class LargeHealthBar extends StatefulWidget {
  
  //health MUST be passed a double between 0-1
  final double health;
  LargeHealthBar(this.health);

  @override
  _LargeHealthBarState createState() => _LargeHealthBarState();
}

class _LargeHealthBarState extends State<LargeHealthBar> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.grey[500],
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.red[600],
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: FractionallySizedBox(
              heightFactor: 1,
              widthFactor: widget.health,
            ),
          ),
          Text('  enemy name')  
        ],
      ),
    );
  }
}

// child: Container(
//           decoration: BoxDecoration(
//               color: Colors.red[900],
//               borderRadius: BorderRadius.all(
//                 Radius.circular(5),
//               ),
//             ),
//           alignment: Alignment.centerLeft,
//           child: FractionallySizedBox(
//           heightFactor: 1,
//           widthFactor: widget.health,
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.red[600],
//               borderRadius: BorderRadius.all(
//                 Radius.circular(5),
//               ),
//             ),
//             child: Text('enemy name'),
//           ),