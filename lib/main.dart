import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color colour, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: colour,
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.blue, 4),
              buildKey(Colors.green, 5),
              buildKey(Colors.indigo, 6),
              buildKey(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
