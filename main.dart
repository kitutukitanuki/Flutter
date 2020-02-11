import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'わかりやすい'),
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
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("$_count"),
              Text("\n"),
              FlatButton(
                padding: EdgeInsets.all(20.0),
                color: Colors.red,
                onPressed: () {
                  setState(() => _count++);
                },
                child: Text(
                  '押してみて',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text("\n\n"),
              FlatButton(
                padding: EdgeInsets.all(20.0),
                color: Colors.red,
                onPressed: () {
                  setState(() => _count--);
                },
                child: Text(
                  '押してたらだめよ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text("\n\n"),
              FlatButton(
                padding: EdgeInsets.all(20.0),
                color: Colors.red,
                onPressed: () {
                  setState(() => _count = _count - 2);
                },
                child: Text(
                  'さらに押してたらだめよ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text('\n\n'),
              FlatButton(
                padding: EdgeInsets.all(20.0),
                color: Colors.red,
                onPressed: () {
                  setState(() => _count = 0);
                },
                child: Text(
                  '最初から',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Image.network(
                  'https://nzigen.com/flutter-reference/assets/img/samples/logo-jumper.png'),
              Image.asset('images/logo-jumper.png'),
            ],
          ),
        ));
  }
}
