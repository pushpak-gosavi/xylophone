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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children : [
          Expanded(
            child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  playAudio(1);
                },
                child: Text('')),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                playAudio(2);
              },
              child: Text(''),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.yellow),
              onPressed: () {
                playAudio(3);
              },
              child: Text(''),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                playAudio(4);
              },
              child: Text(''),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                playAudio(5);
              },
              child: Text(''),
            ),
          ),
          Expanded(
              child: TextButton(
            onPressed: () {
              playAudio(6);
            },
            child: Text(''),
            style: TextButton.styleFrom(backgroundColor: Colors.white),
          )),
          Expanded(
            child: TextButton(
              onPressed: () {
                playAudio(7);
              },
              child: Text(''),
              style: TextButton.styleFrom(backgroundColor: Colors.purple),
            ),
          )
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
