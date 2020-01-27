import 'package:flutter/material.dart';

class Page2Page extends StatefulWidget {

  Page2Page({Key key, this.count}) : super(key: key);

  final int count;

  _Page2PageState createState() => _Page2PageState();
}

class _Page2PageState extends State<Page2Page> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Text(widget.count.toString()),
    );
  }
}