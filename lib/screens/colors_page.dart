import 'package:flutter/material.dart';
import 'package:untitled/componant/item.dart';
import 'package:untitled/models/number.dart';
//import 'home_page.dart';
class colors extends StatelessWidget{
  const colors();
  final List<itemmodel> color=const[
    itemmodel(sound: 'sounds/colors/black.wav',image:'assets/images/colors/color_black.png' , textJ: 'kuroi', textE: 'Black'),
    itemmodel(sound: 'sounds/colors/brown.wav',image:'assets/images/colors/color_brown.png' , textJ: 'chairoi', textE: 'Brown'),
    itemmodel(sound: 'sounds/colors/dusty yellow.wav',image:'assets/images/colors/color_dusty_yellow.png' , textJ: 'mittsu', textE: 'Dusty Yellow'),
    itemmodel(sound: 'sounds/colors/gray.wav',image:'assets/images/colors/color_gray.png' , textJ: 'haiiro', textE: 'Gray'),
    itemmodel(sound: 'sounds/colors/green.wav',image:'assets/images/colors/color_green.png' , textJ: 'midori', textE: 'Green'),
    itemmodel(sound: 'sounds/colors/red.wav',image:'assets/images/colors/color_red.png' , textJ: 'akia', textE: 'Red'),
    itemmodel(sound: 'sounds/colors/white.wav',image:'assets/images/colors/color_white.png' , textJ: 'shiroi', textE: 'White'),
    itemmodel(sound: 'sounds/colors/yellow.wav',image:'assets/images/colors/yellow.png' , textJ: 'kiiroi', textE: 'Yellow'),
  ];
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Colors'),backgroundColor: Color(0xFFCE5F15),
        centerTitle: true,),
      body: ListView(
        children:
        fam_list(color)
        ,
      ),
    );
  }
  List<item>fam_list(List<itemmodel>listoffam){
    List <item> itemlist=[];
    for(int i=0;i<color.length;i++){
      itemlist.add(item(items: color[i],color: Color(0xFFC0754D),));
    }
    return itemlist;
  }
}