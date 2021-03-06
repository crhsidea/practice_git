import 'package:flutter/material.dart';
import 'package:practice_git/page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  int count = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              count.toString()
            ),
            Text(
              'Samuel Yuan',
            ),
            FlatButton(
              child: Text('Increase Count'),
              onPressed: () {
                setState(() {
                  count++;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2Page(count: count,)),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );



  }
}
