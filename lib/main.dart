import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  Widget playSound({Color color,int number}) => Expanded(
      child: Container(

        color: color,
        child: FlatButton(onPressed: (){

          player.play('note$number.wav');
        }, ),
      ),
    );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              playSound(color:Colors.red,number: 1),
              playSound(color:Colors.orange,number: 2),
              playSound(color:Colors.yellow,number: 3),
              playSound(color:Colors.green,number: 4),
              playSound(color:Colors.blue,number: 5),
              playSound(color:Colors.indigo,number: 6),
              playSound(color:Colors.deepPurple,number: 7),


            ],
          ),
        ),
      ),
    );
  }
}
