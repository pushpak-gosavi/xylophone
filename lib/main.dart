import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Xylophone(),
        ),
      ),
    ),
  );
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playAudio(int soundNumber) {
    AudioCache player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildKey(int sound, Color colors) {
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(backgroundColor: colors),
          onPressed: () {
            playAudio(sound);
          },
          child: Text('')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(1, Colors.red),
          buildKey(2, Colors.orange),
          buildKey(3, Colors.yellow),
          buildKey(4, Colors.green),
          buildKey(5, Colors.blue),
          buildKey(6, Colors.white),
          buildKey(7, Colors.purple)
        ],
      ),

      /*child: TextButton(
        onPressed: () {
             AudioCache player = AudioCache();
             player.play('assets_note1.wav');
        },
        child: Text('Click Me'),

      ),*/
    );
  }
}
