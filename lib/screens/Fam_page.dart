import 'package:flutter/material.dart';
import 'package:untitled/componant/item.dart';
import 'package:untitled/models/number.dart';
//import 'home_page.dart';
class fam_mem extends StatelessWidget{
  const fam_mem();
  final List<itemmodel> familys=const[
    itemmodel(sound: 'sounds/family_members/daughter.wav',image:'assets/images/family_members/family_daughter.png' , textJ: 'musume', textE: 'daughter'),
    itemmodel(sound: 'sounds/family_members/father.wav',image:'assets/images/family_members/family_father.png' , textJ: 'chichi', textE: 'father'),
    itemmodel(sound: 'sounds/family_members/grand father.wav',image:'assets/images/family_members/family_grandfather.png' , textJ: 'sofu', textE: 'grand father'),
    itemmodel(sound: 'sounds/family_members/grand mother.wav',image:'assets/images/family_members/family_grandmother.png' , textJ: 'sobo', textE: 'grand mother'),
    itemmodel(sound: 'sounds/family_members/mother.wav',image:'assets/images/family_members/family_mother.png' , textJ: 'haha', textE: 'mother'),
    itemmodel(sound: 'sounds/family_members/older bother.wav',image:'assets/images/family_members/family_older_brother.png' , textJ: 'ani', textE: 'older brother'),
    itemmodel(sound: 'sounds/family_members/older sister.wav',image:'assets/images/family_members/family_older_sister.png' , textJ: 'ane', textE: 'older sister'),
    itemmodel(sound: 'sounds/family_members/son.wav',image:'assets/images/family_members/family_son.png' , textJ: 'Musuko', textE: 'son'),
    itemmodel(sound: 'sounds/family_members/younger brohter.wav',image:'assets/images/family_members/family_younger_brother.png' , textJ: 'Otouto', textE: 'younger brother'),
    itemmodel(sound: 'sounds/family_members/younger sister.wav',image:'assets/images/family_members/family_younger_sister.png' , textJ: 'imouto', textE: 'younger sister'),
  ];
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title: Text('Family Member'),backgroundColor: Color(0xFF969044),
      centerTitle: true,),
body: ListView(
  children:
    fam_list(familys)
  ,
),
  );
}
  List<item>fam_list(List<itemmodel>listoffam){
    List <item> itemlist=[];
    for(int i=0;i<familys.length;i++){
      itemlist.add(item(items: familys[i],color: Color(0xFFC6C77A),));
    }
    return itemlist;
  }
}

