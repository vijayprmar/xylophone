import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

void playSound(int number) {
  final player = AudioCache();
  player.play("note$number.wav");
}

Expanded buildKey(Color color, int key) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        playSound(key);
      },
      child: Text(""),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.purple, 4),
              buildKey(Colors.blue, 5),
              buildKey(Colors.pink, 6),
              buildKey(Colors.green, 7),
            ],
          ),
        ),
      ),
    );
  }
}
