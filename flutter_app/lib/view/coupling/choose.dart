import '../../view/importer.dart';

class Choose extends StatefulWidget {
  Choose({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Choose createState() => _Choose();
}

class _Choose extends State<Choose> {
  

  CrossFadeState _crossFadeState = CrossFadeState.showFirst;
  Timer _crossFadeTimer;

  @override
  Widget build(BuildContext context) {

    final load0  = Text('　　　集計中　　 \n\n 少々お待ちください \n',style: TextStyle(color: Colors.black),);
    final load1  = Text('　　　　集計完了　　 \n\n 集計結果をご確認ください \n',style: TextStyle(color: Colors.black),);
    final image0 = Image.network(
      'https://blog-imgs-117.fc2.com/e/i/g/eiganokai/tenor.gif',
      width: 180.0,
      height: 180.0,
    );
    final image1 = Image.asset('assets/images/move_heart.gif', width: 200.0, height: 80.0);
    final btn1 = RaisedButton(
              color: Colors.white,
              shape:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Text('結果をみる'),
              onPressed: () {Navigator.of(context).push(_createRoute());},
              //onPressed: () => Navigator.of(context).pushNamed("/result"), child: new Text('結果をみる'),
              );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            
          Image.asset('assets/images/love_short.jpg', width: 200.0, height: 80.0),
          
          Container(child: AnimatedCrossFade(
            firstChild: load0,
            secondChild: load1,
            duration: Duration(seconds: 1),
            crossFadeState: _crossFadeState,
          ),
          ),

          Container(child: AnimatedCrossFade(
            firstChild: image0,
            secondChild: image1,
            duration: Duration(seconds: 1),
            crossFadeState: _crossFadeState,
          ),
          ),

          Container(child: AnimatedCrossFade(
            firstChild: Text(''),
            secondChild: btn1,
            duration: Duration(seconds: 1),
            crossFadeState: _crossFadeState,
          ),
          ),

            ],
          ),
        ), 
    );
  }


  @override
  void dispose() {
    if (_crossFadeTimer != null) {
      _crossFadeTimer.cancel();
      _crossFadeTimer = null;
    }
    super.dispose();
  }
  @override

  void initState() {
    _crossFadeTimer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        if (_crossFadeState == CrossFadeState.showFirst) {
          _crossFadeState = CrossFadeState.showSecond;
        }
        // } else {
        //   _crossFadeState = CrossFadeState.showFirst;
        // }
      });
    });    
    super.initState();

    }
  }

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Result(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );


}//state class

  




