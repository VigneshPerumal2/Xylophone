import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void play(int no){
    final player = AudioCache();
    player.play('note$no.wav');
  }
  Expanded make({Color color , int num}){
    return Expanded(

      child: Container(

        child: RaisedButton(onPressed: (){
          play(num);

        },
          color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
               make(color:Colors.red,num:1),
              make(color:Colors.orange,num:2),
              make(color:Colors.yellow,num:3),
              make(color:Colors.green,num:4),
              make(color:Colors.teal,num:5),
              make(color:Colors.blue,num:6),
              make(color:Colors.purple,num:7),
            ],
          ),
        ),
      ),
    );
  }
}
