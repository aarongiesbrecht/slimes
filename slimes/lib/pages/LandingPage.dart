import 'package:flutter/material.dart';
import 'package:slimes/pages/CombatPage.dart';

//local imports
import './CombatPage.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.green[300],
      child: new InkWell(
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new CombatPage())),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Start', style: new TextStyle(color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.bold)),
            new Text('Game', style: new TextStyle(color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.bold)),
          ],       
        ),
      ),     
    );
  }
}