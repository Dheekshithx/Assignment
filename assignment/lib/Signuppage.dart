import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Login.dart';
import 'home.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Signuppage(),));
}

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  String? pass;
  var formkey=GlobalKey<FormState>();
  bool nopasswordvisibility=true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key:formkey,
      
        child: Container(
          
         decoration: BoxDecoration(
         image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/loginn.jpg"),
         ) 
         ),

      child: Center(
        
        
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
        Text("Sign Up",style: GoogleFonts.poppins(fontSize: 65,color: Colors.white),),
        Text("Create an Account,Its free",style:TextStyle(color: Colors.black)),
        
        
        Padding(
        
          padding: const EdgeInsets.all(8.0),
        
          child: TextFormField(
            validator: (email){
              if(email!.isEmpty || !email.contains("@")){
                return "Field is empty/Invalid";
              }else{
                return null;
              }
            },
        
           decoration: InputDecoration(
        
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
        
            hintText: "Email ID",
        
            labelText:"Email ID",
            
        
            
        
           ), 
        
          ),
        
        ),
        
        Padding(
        
          padding: const EdgeInsets.all(8.0),
        
          child: TextFormField(
            obscureText: nopasswordvisibility,
            validator: (password){
              pass=password;
              if(password!.isEmpty || password.length<6){
                return "Field is empty/Invalid";
              }else{
                return null;
              }
            },
            decoration:InputDecoration(
        
              border: OutlineInputBorder(),
              prefixIcon: IconButton(
                      onPressed: (){
                       setState(() {
                       if(nopasswordvisibility==true){
                        nopasswordvisibility=false;
                       }else{
                        nopasswordvisibility=true;
                       }  
                       }); 
                      },
                      icon: Icon(nopasswordvisibility == true
                  ? Icons.visibility_off_sharp
                  :Icons.visibility)),
        
              hintText: "Password",
        
              labelText: "Password",
        
              
        
            )
        
          ),
        
        ),
        
        Padding(
        
          padding: const EdgeInsets.all(8.0),
        
          child: TextFormField(
            obscureText: nopasswordvisibility,
            validator:(confirmpassword){
              if(confirmpassword!.isEmpty ||pass!=confirmpassword){
                return "Field is empty/Invalid";
              }
            },
        
            decoration: InputDecoration(
        
              border: OutlineInputBorder(),
              prefixIcon: IconButton(
                      onPressed: (){
                       setState(() {
                       if(nopasswordvisibility==true){
                        nopasswordvisibility=false;
                       }else{
                        nopasswordvisibility=true;
                       }  
                       }); 
                      },
                      icon: Icon(nopasswordvisibility == true
                  ? Icons.visibility_off_sharp
                  :Icons.visibility)),
        
              hintText: "Confirm password",
        
              labelText: "Confirm password",
        
              
        
            ),
        
          ),
        
        ),
        ElevatedButton(onPressed: (){
          final valid=formkey.currentState!.validate();
          if(valid){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home()));
          }else{
            Fluttertoast.showToast(
                        msg: "Invalid Username or Password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM_LEFT,
                        // timeInSecForIosWeb: 1,
                        backgroundColor: Color.fromARGB(255, 54, 200, 244),
                        textColor: Colors.white,
                        fontSize: 16.0);
          }
        }, child: Text("Sign Up")),
        TextButton(onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login()));
        }, child: Text("Already have an Account?,Log in",style: TextStyle(color: Colors.white),))
        
          ],
        
        ),
      ),
        ),
      ),
    );
  }
}