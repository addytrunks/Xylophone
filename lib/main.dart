import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void play_sound(int n){
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildo (Color color,int n){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          play_sound(n);
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildo(Colors.purple, 1),
            buildo(Colors.indigo, 2),
            buildo(Colors.blue, 3),
            buildo(Colors.green, 4),
            buildo(Colors.yellow, 5),
            buildo(Colors.orange, 6),
            buildo(Colors.red, 7),
          ],
        ),
      )
    ));
  }
}
