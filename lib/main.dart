import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound( int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');  
  }

  Expanded buildKey(Color color, int sound){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(sound);
        }, 
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),
              
            ],
          ),
        ),
      ),
    );
  }
}
