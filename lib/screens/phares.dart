import 'package:flutter/material.dart';
import 'package:untitled/componant/item.dart';
import 'package:untitled/models/number.dart';
import 'package:untitled/componant/phares_item.dart';
class phares extends StatelessWidget{
  const phares();
// final Nums one=
  //const Nums(image: 'assets/images/numbers/number_one.png', textJ: 'ichi', textE: 'One');
  final List<phmodel> phare=const[
    phmodel(sound: 'sounds/phrases/dont_forget_to_subscribe.wav', textJ: 'Kōdoku suru koto o wasurenaide kudasai', textE: 'dont forget to subscribe'),
    phmodel(sound: 'sounds/phrases/how_are_you_feeling.wav', textJ: 'Go kibun wa ikagadesu ka', textE: 'how are you feeling?'),
    phmodel(sound: 'sounds/phrases/i_love_anime.wav', textJ: 'Watashi wa anime ga daisukidesu', textE: 'i love anime'),
    phmodel(sound: 'sounds/phrases/i_love_programming.wav', textJ: 'Watashi wa puroguramingu daisukidesu', textE: 'i love  programming'),
    phmodel(sound: 'sounds/phrases/programming_is_easy.wav', textJ: 'Puroguramingu wa kantandesu', textE: 'programming is easy'),
    phmodel(sound: 'sounds/phrases/what_is_your_name.wav', textJ: 'Namae wa nandesu ka', textE: 'what is your name ?'),
    phmodel(sound: 'sounds/phrases/where_are_you_going.wav', textJ: 'Doko ni iku no', textE: 'where are you going'),
    phmodel(sound: 'sounds/phrases/yes_im_coming.wav', textJ: 'Hai watashi wa kite imasu', textE: 'yes im coming'),
    phmodel(sound: 'sounds/phrases/are_you_coming.wav', textJ: 'Kimasu ka', textE: 'are you coming?'),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Phrases'),
        backgroundColor: Color(0xFF4A4E69),
        centerTitle: true,

      ),
      body: ListView(children:
      num_list(phare)
        ,),
    );
  }

  List<pharesitem>num_list(List<phmodel>listofnum){
    List <pharesitem> itemlist=[];
    for(int i=0;i<phare.length;i++){
      itemlist.add(pharesitem(item: phare[i], color: Color(0xFFC9ADA7),)) ;
    }
    return itemlist;
  }
}