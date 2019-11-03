import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
      primarySwatch: Colors.lime,
      ),
      home: MyHomePage(title: 'My App'),
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
        title: Text(widget.title),
      ),
      body: new ListView.builder(
          itemCount: _counter,
          itemBuilder: (context, index){
          return ListTile(
              leading: const Icon(Icons.event_available),
              title: Text("Adding tile"),
               onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          );
  }


      ),
    
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      title: Text('Second screen'),
    ),
    body: Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(context.toString()),
      ), 
    ),
    );
  }
}

