import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  double _value = 0.0;

  void _onChanged(double value) {
    setState((){
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Slider Demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Slider value is ${_value.round()}'),
            new Slider(
                min: 0.0,
                max: 100.0,
                value: _value,
                onChanged: (double value){_onChanged(value);}
            ),
            new Text('Progress value is ${_value * .01}'),
            new LinearProgressIndicator(
              value: _value * .01,
            )
          ],
        ),
      ),
    );
  }
}