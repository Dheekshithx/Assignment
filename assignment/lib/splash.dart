import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner:false,
  home:Splash()));
}

class  Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
    body:Container(
      decoration:BoxDecoration(
         image: DecorationImage(
          fit: BoxFit.cover,
          image:AssetImage("assets/images/colorgradient.jpg"),),),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.food_bank,size: 100,color: Colors.white),
              
               Text(
                  "Fresh Foods",
                  style:GoogleFonts.lobster(fontSize: 40,color:Colors.white)),
              
              Text("Tasty & Healthy",style: GoogleFonts.jost(fontSize: 20,color:Colors.white),)
              
          ],
        ),
      ),),
 );
 }

}