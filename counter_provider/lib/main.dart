import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

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
        home: ChangeNotifierProvider<Counter>(
          builder: (_) => Counter(),
          child: MyHomePage(title: "Counter with Provider"),
      )
    );
  }
}

class MyHomePage extends StatelessWidget {
  final title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter by Provider"),
      ),
      body: Center(
        child: Text(
          'Count Value : ${counterProvider.getCounter()}',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => counterProvider.incrementCounter(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => counterProvider.decrementCounter(),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}



