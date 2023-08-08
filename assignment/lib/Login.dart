import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Signuppage.dart';
import 'home.dart';

void main(){
  runApp((MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Login())));
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     body: 
     Container(
      
      decoration: BoxDecoration(
        image:
         DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/loginn.jpg"),),
      ),
      child: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text("Login",style: GoogleFonts.poppins(fontSize: 65,color: Colors.white),),
            Text("Welcome back!Login with your credentials",style: TextStyle(color:Colors.black),),
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                hintText: "Email ID",
                labelText:"Email ID",
                helperText:"Username must be an email"
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: TextField(
            
             decoration: InputDecoration(
            
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.visibility_off_sharp),
              hintText: "Password",
              labelText: "Password",
              
              suffixIcon: Icon(Icons.visibility_off_sharp)
             ), 
            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          }, child: Text("Login")),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signuppage()));
          }, child: Text("Do you have an account? Sign Up",style: TextStyle(color: Colors.white),))
        ]),
      ),
      
     ),
     
     
      
      
    );
  }
}