import 'package:flutter/material.dart';

class Prof extends StatefulWidget {
  Prof({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProfState createState() => _ProfState();
}

class _ProfState extends State<Prof> {
  var index = 58;
  var _sliderValue = 0.0;
  var _sliderValue2 = 0.0;
  var _sliderValue3 = 0.0;
  var _labelText = '';
  var _labelText2 = '';
  var _labelText3 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(30),
                    child: Image.asset('assets/images/love_short.jpg',
                        width: 200.0, height: 80.0)),
                Container(
                  width: 250.0,
                  height: 250.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey,
                        offset: new Offset(5.0, 5.0),
                        blurRadius: 10.0,
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        //assetsImage,
                        'assets/images/0.png',
                        width: 150.0, height: 150.0,
                        //fit: BoxFit.cover,
                      ),
                      Container(
                        margin: EdgeInsets.all(16.0),
                        child: Text(
                          'アベノ・マスク ($index',
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            margin: const EdgeInsets.all(4.0),
                            decoration: new BoxDecoration(
                              border: new Border.all(
                                  width: 4.0, color: Colors.grey[600]),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(4.0)),
                            ),
                            child: new Text("ギリ50代"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            margin: const EdgeInsets.all(4.0),
                            decoration: new BoxDecoration(
                              border: new Border.all(
                                  width: 4.0, color: Colors.grey[600]),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(4.0)),
                            ),
                            child: new Text("権力あり"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            margin: const EdgeInsets.all(4.0),
                            decoration: new BoxDecoration(
                              border: new Border.all(
                                  width: 4.0, color: Colors.pink[300]),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(4.0)),
                            ),
                            child: new Text("初参加"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Q1. マスクのサイズ"),
                      ),
                      Text(
                        _labelText,
                        style: TextStyle(fontSize: 14),
                      ),
                      Slider(
                        value: _sliderValue,
                        min: 0,
                        max: 100,
                        divisions: 5,
                        onChanged: (double value) {
                          setState(() {
                            _sliderValue = value.roundToDouble();
                            _labelText = 'サイズ = $_sliderValue';
                          });
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Q2. マスクの大きさ"),
                      ),
                      Text(
                        _labelText2,
                        style: TextStyle(fontSize: 14),
                      ),
                      Slider(
                        value: _sliderValue2,
                        min: 0,
                        max: 100,
                        divisions: 5,
                        onChanged: (double value) {
                          setState(() {
                            _sliderValue2 = value.roundToDouble();
                            _labelText2 = '大きさ = $_sliderValue2';
                          });
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Q3. まゆげの太さ"),
                      ),
                      Text(
                        _labelText3,
                        style: TextStyle(fontSize: 14),
                      ),
                      Slider(
                        value: _sliderValue3,
                        min: 0,
                        max: 100,
                        divisions: 5,
                        onChanged: (double value) {
                          setState(() {
                            _sliderValue3 = value.roundToDouble();
                            _labelText3 = 'まゆげ = $_sliderValue3';
                          });
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  child: Center(),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: RaisedButton(
                    child: Text("　　　評価を更新　　　"),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
                RaisedButton(
                  color: Colors.white,
                  shape: StadiumBorder(
                    side: BorderSide(color: Colors.red),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: new Text('       BACK       '),
                ),
              ]),
        ),
      ),
    );
  }
}
