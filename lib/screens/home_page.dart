import 'package:flutter/material.dart';
import 'package:untitled/screens/Number_page.dart';
import 'package:untitled/screens/Fam_page.dart';
import 'package:untitled/screens/colors_page.dart';
import 'package:untitled/screens/phares.dart';
class HomePage extends StatelessWidget {
  const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  drawerEdgeDragWidth:double.infinity,
      backgroundColor: Color(0xFFF7F0E6),
      appBar: AppBar(
        actions: [IconButton(
          tooltip: 'My profile',
            icon: Icon(
                Icons.person,
                color:  Color(0xFF1A1D33),
                size: 34.0),
            onPressed: (){}
        ),],
        title: Text('Toku'),
        backgroundColor: Color(0xFF3B8670),
        centerTitle: true,
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            //Spacer(flex: 1,),
          Divider(
            height: 65,
            color: Color(0xFFF7F0E6),
            thickness: 1,
            indent: 20,
            endIndent: 20,

          ),
          catogry('Number', Color(0xFF5F6F52),(){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){return Number();}));
          }),
          Divider(
            height: 65,
            color: Color(0xFFFEFAE0),
            thickness: 1,
            indent: 20,
            endIndent: 20,

          ),
          catogry('Family Member', Color(0xFF969044),(){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){return fam_mem();}));
          }), Divider(
            height: 65,
            color: Color(0xFFFEFAE0),
            thickness: 1,
            indent: 20,
            endIndent: 20,

          ),
          catogry('Colors', Color(0xFFCE5F15),(){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){return colors();}));
          }), Divider(
            height: 65,
            color: Color(0xFFFEFAE0),
            thickness: 1,
            indent: 20,
            endIndent: 20,

          ),
          catogry('Phrases', Color(0xFFBA8B6B),(){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){return phares();}));
          }),
        ],
      ),
    );
  }
}

class catogry extends StatelessWidget {
  catogry(
    this.text,
    this.color,
     this.onTap
  );
  String text;
  Color color;

Function()onTap;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        child: Container(
          
          decoration: BoxDecoration(color: color,
              borderRadius: BorderRadius.all(Radius.circular(6)) ),
      padding: EdgeInsets.only(left: 10, top: 12),
      width: double.infinity,
      height: 65,

      child:  Row(
          children:[Text(
        text,
        style: TextStyle(
            color: Color(0xFF1A1D33), fontSize: 20, fontFamily: 'Lora'),
      ),
    ])
        )
    );
  }
}
