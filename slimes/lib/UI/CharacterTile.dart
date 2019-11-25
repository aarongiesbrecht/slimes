import 'package:flutter/material.dart';

class CharacterTile extends StatefulWidget {
  CharacterTile();

  @override
  _CharacterTileState createState() => _CharacterTileState();
}

class _CharacterTileState extends State<CharacterTile> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Container(
        padding: EdgeInsets.all(5),
        color: Colors.grey[700],
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey,
          child: Row(
            children: <Widget>[
              
            ],
          ),
        ),
      ),
    );
  }
}


// old column

// Expanded(
//   child: FractionallySizedBox(
//     widthFactor: 0.8,
//     heightFactor: 0.8,
//     alignment: Alignment.center,
//     child: Container(
//       child: Text('char\navatar'),
//       color: Colors.green,
//     ),
//   ),
// ),
// Expanded(
//   child: Column(
//     children: <Widget>[
//       Expanded(  
//         child: Container(
//           alignment: Alignment.bottomLeft,
//           child: Text('char name'),
//         ),
//       ),
//       Expanded(
//         child: FractionallySizedBox(
//           widthFactor: .9,
//           heightFactor: .25,
//           alignment: Alignment.centerLeft,
//           child: Container(
//             child: Text('health'),
//             color: Colors.red,
//           ),
//         ),
//       ),
//     ],
//   ),
// ),