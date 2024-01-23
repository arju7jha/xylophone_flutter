import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnum.wav'));
  }

  Expanded buildKey({required Color color, required int SoundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(SoundNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor :color,
        ),
        child: Container(
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(child: buildKey(color: Colors.red, SoundNumber: 1)),
              Container(child: buildKey(color: Colors.teal, SoundNumber: 2)),
              Container(child: buildKey(color: Colors.yellow, SoundNumber: 3)),
              Container(child: buildKey(color: Colors.blue, SoundNumber: 4)),
              Container(child: buildKey(color: Colors.purple, SoundNumber: 5)),
              Container(child: buildKey(color: Colors.green, SoundNumber: 6)),
              Container(child: buildKey(color: Colors.pink, SoundNumber: 7)),
            ],
          ),
        ),
      ),
    );
  }
}
