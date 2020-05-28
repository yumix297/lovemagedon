import '../../view/importer.dart';

class Result extends StatefulWidget {
  Result({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Result createState() => _Result();
}

class _Result extends State<Result> with TickerProviderStateMixin {
  var men = 'MAN';
  var women = 'WOMAN';

  AnimationController controller;
  Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(children: <Widget>[
        Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  '結果発表',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
              ),
              Image.asset('assets/images/love_short.jpg',
                  width: 200.0, height: 80.0),
              Text(
                'おめでとうございます！',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.pink,
                ),
              ),
              Container(
                  color: Colors.white,
                  child: FadeTransition(
                      opacity: animation,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //男：ボックス
                          Container(
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
                                  "assets/images/0.png",
                                  width: 90.0, height: 90.0,
                                  //fit: BoxFit.cover,
                                ),
                                Container(
                                  margin: EdgeInsets.all(4.0),
                                  child: Text(
                                    'MEMBER',
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //シルエット画像
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: new Container(
                              height: 330,
                              width: 180,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                  image:
                                      new AssetImage("assets/images/kiss.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                          //女：ボックス
                          Container(
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
                                  "assets/images/1.png",
                                  width: 90.0, height: 90.0,
                                  //fit: BoxFit.cover,
                                ),
                                Container(
                                  margin: EdgeInsets.all(4.0),
                                  child: Text(
                                    'MEMBER',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //女:END
                        ],
                      ))),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: RaisedButton(
            color: Colors.white,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            onPressed: () => Navigator.of(context).pop(),
            child: new Text('戻る'),
          ),
        ),
      ]),
    );
  } //build

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    /*animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });*/
    controller.forward();
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
} //class
