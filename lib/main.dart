import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatelessWidget {
  // This widget is the root of your application.
  void sound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('$num.mp3'));
  }
Expanded buildkey ({Color color : Colors.black , int num :1})
{
  return Expanded(child:  FlatButton(
    color: color,
    onPressed: () {
      sound(num);
    }, child: Text ('$num'),),);


}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch ,
            children: <Widget>[
              buildkey(color : Colors.red ,num : 1),
              buildkey(color : Colors.orange ,num : 2),
              buildkey(color : Colors.yellow ,num : 3),
              buildkey(color : Colors.green ,num : 4),
              buildkey(color : Colors.teal ,num : 5),
              buildkey(color : Colors.blue ,num : 6),
              buildkey(color : Colors.purple ,num : 7),


         ],
          ),
        ),
      ),
    );
  }
}
