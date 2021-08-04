import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<CounterPage> {
  final _textStyle = new TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('My appbar'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de clics',
              style: _textStyle,
            ),
            Text(
              '$_counter',
              style: _textStyle,
            ),
          ],
        )),
        floatingActionButton: _createButton());
  }

  Widget _createButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _toZero,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _remove,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _add,
        ),
      ],
    );
  }

  void _add() {
    setState(() {
      _counter++;
    });
  }

  void _remove() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _toZero() {
    setState(() {
      _counter = 0;
    });
  }
}
