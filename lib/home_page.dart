

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ super.key }) ;


  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                
                makeContainer(
                  color: Colors.orange, 
                  onTap: (){
                    playNote('do_1');
                  }),

                makeContainer(
                  color: Colors.yellow, 
                  onTap: (){
                    playNote('re_2');
                  }),
                
                makeContainer(
                  color: const Color(0xff4CAE50), 
                  onTap: (){
                    playNote('mi_3');
                  }),
                makeContainer(
                  color: const Color(0xff009688), 
                  onTap: (){
                    playNote('fa_4');
                  }),
                makeContainer(
                  color: const Color(0xff2196F3), 
                  onTap: (){
                    playNote('sol_5');
                  }),
                makeContainer(
                  color: const Color(0xff9B27B0), 
                  onTap: (){
                    playNote('la_6');
                  })])));
              
      
  }

  void playNote (String note){
      audioPlayer.play(AssetSource('notes/note$note.wav'),);}

  Widget makeContainer ({
      required Color color,
      required GestureTapCallback onTap,}){
         return Expanded(
                    child: InkWell
                      (splashColor: Colors.black,
                        onTap: onTap, 
                      child: Container(
                        color: color),
                    ),);

    
  }
}




