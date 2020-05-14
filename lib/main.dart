import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: Container(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          }, 
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildkey(color: Colors.red, soundNumber: 1),
                buildkey(color: Colors.yellow, soundNumber: 2),
                buildkey(color: Colors.green, soundNumber: 3),
                buildkey(color: Colors.blue, soundNumber: 4),
                buildkey(color: Colors.orange, soundNumber: 5),
                buildkey(color: Colors.pink, soundNumber: 6),
                buildkey(color: Colors.teal, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
