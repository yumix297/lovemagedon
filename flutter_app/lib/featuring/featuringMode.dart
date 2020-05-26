import 'package:flutter/material.dart';

 class FeaturingMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              shape: StadiumBorder(side: BorderSide(color: Colors.red),),
              onPressed: () => Navigator.of(context).pushNamed("/slot"), child: new Text('     NOMAL     '),
              ),

            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              shape: StadiumBorder(side: BorderSide(color: Colors.red),),
              onPressed: () => Navigator.of(context).pushNamed("/slot"), child: new Text('       HARD       '),
              ),

            RaisedButton(
              color: Colors.white,
              shape: StadiumBorder(side: BorderSide(color: Colors.red),),
              onPressed: () => Navigator.of(context).pop(), child: new Text('       BACK       '),
              ),

            ],
          ),
        ), 
 
 
    );
  }
}