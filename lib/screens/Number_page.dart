import 'package:flutter/material.dart';
import 'package:untitled/componant/item.dart';
import 'package:untitled/models/number.dart';
class Number extends StatelessWidget{
  const Number();
// final Nums one=
 //const Nums(image: 'assets/images/numbers/number_one.png', textJ: 'ichi', textE: 'One');
 final List<itemmodel> numbers=const[
   itemmodel(sound: 'sounds/numbers/number_one_sound.mp3',image:'assets/images/numbers/number_one.png' , textJ: 'hitotsu', textE: 'One'),
   itemmodel(sound: 'sounds/numbers/number_two_sound.mp3',image:'assets/images/numbers/number_two.png' , textJ: 'futatsu', textE: 'Two'),
   itemmodel(sound: 'sounds/numbers/number_three_sound.mp3',image:'assets/images/numbers/number_three.png' , textJ: 'mittsu', textE: 'Three'),
   itemmodel(sound: 'sounds/numbers/number_four_sound.mp3',image:'assets/images/numbers/number_four.png' , textJ: 'yottsu', textE: 'Four'),
   itemmodel(sound: 'sounds/numbers/number_five_sound.mp3',image:'assets/images/numbers/number_five.png' , textJ: 'itsutsu', textE: 'Five'),
   itemmodel(sound: 'sounds/numbers/number_six_sound.mp3',image:'assets/images/numbers/number_six.png' , textJ: 'muttsu', textE: 'Six'),
   itemmodel(sound: 'sounds/numbers/number_seven_sound.mp3',image:'assets/images/numbers/number_seven.png' , textJ: 'nanatsu', textE: 'Seven'),
   itemmodel(sound: 'sounds/numbers/number_eight_sound.mp3',image:'assets/images/numbers/number_eight.png' , textJ: 'yattsu', textE: 'Eight'),
   itemmodel(sound: 'sounds/numbers/number_nine_sound.mp3',image:'assets/images/numbers/number_nine.png' , textJ: 'kokonotsu', textE: 'Nine'),
   itemmodel(sound: 'sounds/numbers/number_ten_sound.mp3',image:'assets/images/numbers/number_ten.png' , textJ: 'tou', textE: 'Ten'),
 ];
  @override
  Widget build(BuildContext context){
  return Scaffold(
appBar: AppBar(
    title: Text('learning Numbers'),
    backgroundColor: Color(0xFF5F6F52),
    centerTitle: true,

   ),
body: ListView(children:
  num_list(numbers)
       ,),
  );
  }

List<item>num_list(List<itemmodel>listofnum){
  List <item> itemlist=[];
  for(int i=0;i<numbers.length;i++){
    itemlist.add(item(items: numbers[i],color: Color(0xFF9FC47C),));
  }
  return itemlist;
}
}