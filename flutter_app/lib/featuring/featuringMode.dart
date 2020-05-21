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
              color: Colors.white,
              shape:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () => Navigator.of(context).pushNamed("/slot"), child: new Text('slotへ'),
              ),

            RaisedButton(
              color: Colors.white,
              shape:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),              
              onPressed: () => Navigator.of(context).pop(), child: new Text('戻る'),
              ),

            ],
          ),
        ), 
 
 
    );
  }
}