// ignore: unused_import
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playsound(int noteno) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteno.wav'));
  }

  Expanded buildkey({required Color color, required int SoundNumber}) {
    return Expanded(
      child: FloatingActionButton(
        backgroundColor: color,
        //shape: Rectangle(),
        onPressed: () async {
          playsound(SoundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // checkboxb
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, SoundNumber: 1),
              buildkey(color: Colors.orange, SoundNumber: 2),
              buildkey(color: Colors.yellow, SoundNumber: 3),
              buildkey(color: Colors.green, SoundNumber: 4),
              buildkey(color: Colors.indigo, SoundNumber: 5),
              buildkey(color: Colors.blue, SoundNumber: 6),
              buildkey(
                  color: const Color.fromARGB(255, 2, 10, 57), SoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
