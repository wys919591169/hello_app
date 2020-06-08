
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title:"Our first",
    home:Scaffold(
      appBar: AppBar(
        title: Text("Flutter rolling demo"),
      ),
      body: Center(
        child:RollingButton() ,
      ),
    ),
    );
  }

}

class RollingButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RollingState();
  }
}

class _RollingState extends State<RollingButton>{
  final _random = Random();
  List<int> _roll(){
    final roll1 = _random.nextInt(6)+1;
    final roll2 = _random.nextInt(6)+1;
    return[roll1,roll2];
  }
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('roll'),
      onPressed: _onPressed,
    );
  }

  void _onPressed(){
    debugPrint('_RollingState._onPressed');
    final rollResult = _roll();
    showDialog(context: context,
      builder: (_){
      return AlertDialog(
        content: Text('Roll result:(${rollResult[0]},${rollResult[1]})'),
      );
      }
    );
  }
}