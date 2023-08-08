import 'package:assignment/Login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Signuppage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Open(),));
}

class Open extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/loginn.jpg")
        )
        ),
     child: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello There!",style: GoogleFonts.poppins(fontSize: 65,color: Colors.white),),
          Text("Automatic identity verification which enable you to verify your identity"),
          CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage("assets/images/manwrklaptop.jpg")),
          
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
            }, child: Text("Log in")),
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signuppage()));
          }, child: Text("Sign up"))
        ],
       ),
     ), ),
      
    );
  }
}