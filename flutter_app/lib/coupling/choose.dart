import 'package:flutter/material.dart';

 class Choose extends StatelessWidget {
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
              onPressed: () => Navigator.of(context).pushNamed("/feat1"), child: new Text('choose'),
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