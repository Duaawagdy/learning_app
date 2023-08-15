import 'package:audioplayers/audioplayers.dart';
import 'package:untitled/models/family.dart';
import 'package:untitled/models/number.dart';
import 'package:flutter/material.dart';

class item extends StatelessWidget{
const item({ required this.color, required this.items,});

final itemmodel items;
//final fam family;
final Color color;

@override
Widget build(BuildContext context){
return  Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(

    height: 90,

    color: color,

    child:Row(children: [

    Container(color: Color(0xCFF8EEB9),

    child:

    Image.asset(items.image)),

    Padding(padding: EdgeInsets.only(left: 10)

     ,child: Column(

    mainAxisAlignment:MainAxisAlignment.center,

    children: [Text(items.textJ,style: TextStyle(color: Colors.white,fontSize: 18),),

    Text(items.textE,style: TextStyle(color: Colors.white,fontSize: 18))],))

    ,Spacer(flex: 1,),Padding(padding: EdgeInsets.only(left: 4),child:

          IconButton(onPressed: (){

            final player = AudioPlayer();

            player.play(AssetSource(items.sound));



            },



            icon: Icon(Icons.play_arrow,color: Colors.white,size: 30,) ,),



    )

    ],

    ) ,

    ),
);
}
}
