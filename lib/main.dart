import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask me Anything'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: HomePage(),
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MagicPage();
  }
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int ballCounter = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: FlatButton(
          child: Image.asset('images/ball$ballCounter.png'),
          onPressed: () {
            setState(() {
              ballCounter = Random().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}
