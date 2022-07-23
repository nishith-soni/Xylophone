import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color, required int tone}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(tone);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, tone: 1),
                buildKey(color: Colors.orange, tone: 2),
                buildKey(color: Colors.yellow, tone: 3),
                buildKey(color: Colors.green, tone: 4),
                buildKey(color: Colors.blue, tone: 5),
                buildKey(color: Colors.indigo, tone: 6),
                buildKey(color: Colors.deepPurple.shade800, tone: 7),
                buildKey(color: Colors.indigo.shade900, tone: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
