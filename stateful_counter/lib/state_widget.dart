import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 45;
  int _score = 4;
  void _increaseCounter() {
    setState(() {
      _counter++;
      _score++;
    });
  }
  void _decreaseCounter() {
    setState(() {
      _counter--;
      _score--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: Center(
        child: Text(
            '$_counter',
          // I will explain Theme.of().textheme.display1
          style: Theme.of(context).textTheme.display1,
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _increaseCounter,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _decreaseCounter,
            child: Icon(Icons.remove),
          ),
        ],
      )
    );
  }
}