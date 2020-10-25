import 'package:flutter/material.dart';
import 'botao_estiloso.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Lista Infinita'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title, textAlign: TextAlign.center)),
      ),
      body: ListView.builder(
        itemCount: _counter,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            child: ListTile(title: Center(child: Text('Element ${position}'))),
          );
        },
      ),

      floatingActionButton: BotaoEstiloso(
        onPressed: _incrementCounter,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
