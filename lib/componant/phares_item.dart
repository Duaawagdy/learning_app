import 'package:audioplayers/audioplayers.dart';
import 'package:untitled/models/family.dart';
import 'package:untitled/models/number.dart';
import 'package:flutter/material.dart';
class pharesitem extends StatelessWidget{
  const pharesitem( {Key?key,required this.item, required this.color});
  final phmodel item;
  final Color color;
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        padding: EdgeInsets.only(bottom: 30,top: 20),
        color: color,
        child: Row(

          children: [
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(item.textJ,style: TextStyle(color: Colors.white,fontSize: 18),),
                    Text(item.textE,style: TextStyle(color: Colors.white,fontSize: 18))],))
            ,Spacer(flex: 1,),Padding(padding: EdgeInsets.only(left: 4),child:
            IconButton(onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource(item.sound));

            },

              icon: Icon(Icons.play_arrow,color: Colors.white,size: 30,) ,
            ),

            )
          ],
        ),
      ),
    );
  }
}