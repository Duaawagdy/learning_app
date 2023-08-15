import 'package:flutter/material.dart';
import 'package:untitled/screens/home_page.dart';
import 'package:untitled/screens/Number_page.dart';
void main() {
  runApp(Toku());
}

class Toku extends StatelessWidget{
  const Toku();
 @override
  Widget build(BuildContext context){
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomePage(),
   );
 }
}
