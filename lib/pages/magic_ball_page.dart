import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  const MagicBall({ Key? key }) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}
int indice = 1;
late String imageName = 'assets/images/ball_1.png';
class _MagicBallState extends State<MagicBall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text('Pergunte-me Qualquer coisa !',style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: GestureDetector(
          onTap: (){
            if(indice < 6){
              indice++;
            }else{
              indice=1;
            }
              
            setState(() {
              imageName = 'assets/images/ball_'+indice.toString()+'.png';
           });

          },
          child: Container(
            child: Image.asset(imageName),
          ),
        )
      ),
    );
  }
}