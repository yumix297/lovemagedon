import '../../view/importer.dart';

class CoupleMode extends StatefulWidget {
  CoupleMode({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CoupleModeState createState() => _CoupleModeState();
}

class _CoupleModeState extends State<CoupleMode> {

  // 一度選択ボタンを押したら非活性にする処理
  var choose = 0;
  int _counter = 0;
  bool _isButtonDisabled;
  @override
  void initState() {
    _isButtonDisabled = false;
  }
  void _incrementCounter() {
    setState(() {
      _isButtonDisabled = true;
      _counter++;
      choose = 1;
    });
  }

  //↓のボタンでいけるけど、繰り返し処理の中にいれるのむずい..
  // RaisedButton(
  //     child: new Text(
  //       _isButtonDisabled ? "Hold on..." : "Increment"),
  //     onPressed: _counterButtonPress(),                        
  //     ),

  ///////////////////////////////////////////


  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,        
        children: <Widget>[
          Text('                ',style: TextStyle(color: Colors.black),),          
          Text('                ',style: TextStyle(color: Colors.black),),          
          Text('                ',style: TextStyle(color: Colors.black),),                    
          Text('Q. もっと話してみたい方を3人,お選びください',style: TextStyle(color: Colors.black),),
          Image.asset('assets/images/love_short.jpg', width: 200.0, height: 80.0),
          RaisedButton(            
            color: Colors.red,
            textColor: Colors.white,
            shape: StadiumBorder(
              side: BorderSide(color: Colors.red),
            ),
            onPressed: () => Navigator.of(context).pushNamed("/choose"),
            child: new Text('  主催者に結果を送信  '),
          ),
          Text('                ',style: TextStyle(color: Colors.black),),         
          new Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(4.0),
              crossAxisCount: 2,
              crossAxisSpacing: 10.0, // 縦
              mainAxisSpacing: 10.0, // 横
              childAspectRatio: 0.7, // 高さ
              shrinkWrap: true,
              children: List.generate(
                10,
                (index) {
                  var rng = new Random();
                  var imgNumber = rng.nextInt(9);
                  var assetsImage =
                      "assets/images/" + imgNumber.toString() + ".png";

                  return Container(
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
                    child: Column(children: <Widget>[
                      Image.asset(
                        assetsImage,
                        width: 100.0, height: 100.0,
                        //fit: BoxFit.cover,
                      ),
                      Container(
                        margin: EdgeInsets.all(16.0),
                        child: Text(
                          'MEMBER $index',
                        ),
                      ),

                      Container(
                        child: RaisedButton(
                          color: Colors.white,
                          textColor: Colors.black,
                          shape: StadiumBorder(side: BorderSide(color: Colors.red),),
                          onPressed: () => Navigator.of(context).pushNamed("/prof"), child: new Text('  お相手の印象   '),
                          ),
                      ),
                      Container(
                        child: RaisedButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: StadiumBorder(side: BorderSide(color: Colors.white),),
                          //1つ1つ選択できるようにせんと・・
                          child: new Text(
                          _isButtonDisabled ? "  選択済  " : "   選択   "),
                          onPressed: _counterButtonPress(choose),   
                          //onPressed: () => Navigator.of(context).pushNamed("/profile"), child: new Text('   選択   '),
                          ),
                      ),
                    ]
                    ),
                  );
                },                
              ),
            ),
          ), 
        ], 
      ), 
    );
    
  }

    // 一度選択ボタンを押したら非活性にする
    Function _counterButtonPress(choose) {

    if(choose == 0){//活性
      _isButtonDisabled = false;
    }else{
      _isButtonDisabled = true;      
    }

    if (_isButtonDisabled) {
      return null;
    } else {
      return () {
        // do anything else you may want to here
        _incrementCounter();
      };
    }
  }
} //CoupleMode class
