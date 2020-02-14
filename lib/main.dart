import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  int getRandomNumber() => Random().nextInt(7) + 1;

  void playAudio() {
    final player = AudioCache();
    player.play('note${getRandomNumber()}.wav');
  }

  Expanded buildButton({Color color, Color splash}) => Expanded(
        child: FlatButton(
            color: color,
            splashColor: splash,
            child: Text(''),
            onPressed: () {
              playAudio();
            }),
      );

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildButton(color: Colors.red, splash: Colors.redAccent),
                  buildButton(
                      color: Colors.yellow, splash: Colors.yellowAccent),
                  buildButton(color: Colors.blue, splash: Colors.blueAccent),
                  buildButton(
                      color: Colors.orange, splash: Colors.orangeAccent),
                  buildButton(color: Colors.cyan, splash: Colors.cyanAccent),
                  buildButton(
                      color: Colors.purple, splash: Colors.purpleAccent),
                  buildButton(color: Colors.green, splash: Colors.greenAccent),
                ],
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
      );
}
