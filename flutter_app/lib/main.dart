import 'view/importer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: '   '),
      routes: <String, WidgetBuilder> {
        '/feat1': (BuildContext context) => new FeaturingMode(),
        '/slot': (BuildContext context) => new Slot(),
        '/couple1': (BuildContext context) => new CoupleMode(),
        '/choose': (BuildContext context) => new Choose(),
        '/prof': (BuildContext context) => new Prof(),
        '/result': (BuildContext context) => new Result(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {        
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image.asset('assets/images/love.jpg', width: 250.0, height: 250.0),
            
            RaisedButton(
              color: Colors.white,
              shape: StadiumBorder(
                side: BorderSide(color: Colors.red),
                ),
              onPressed: () => Navigator.of(context).pushNamed("/couple1"), child: new Text('      カップリングモード       '),
              ),

            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              shape: StadiumBorder(
                side: BorderSide(color: Colors.red),
                ),
              onPressed: () => Navigator.of(context).pushNamed("/feat1"), child: new Text('   フューチャリングモード   '),
              ),

          ]
        ),

      ),
    );
  }
}
