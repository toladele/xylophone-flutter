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
              buildKey(Color(0xffd8e2dc), 1),
              buildKey(Color(0xffffe5d9), 2),
              buildKey(Color(0xffffcad4), 3),
              buildKey(Color(0xfff4acd7), 4),
              buildKey(Color(0xfff4aca7), 5),
              buildKey(Color(0xff696d7d), 6),
              buildKey(Color(0xffd8e2fc), 7),
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
