import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MaterialApp(
  home: XylophoneApp(),
  debugShowCheckedModeBanner: false,
));

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final player = AudioCache();
    player.play('note' + '$n' + '.wav');
  }

  Widget buildKey(String text, int num, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(num);
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey('B', 7, Colors.red),
            buildKey('A', 6, Colors.orange),
            buildKey('G', 5, Colors.yellow),
            buildKey('F', 4, Colors.green),
            buildKey('E', 3, Colors.blue[500]),
            buildKey('D', 2, Colors.indigo),
            buildKey('C', 1, Colors.purple[600]),
          ],
        ),
      ),
    );
  }
}
