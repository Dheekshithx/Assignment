import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:ListView1()));
}

class ListView1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialer",style:GoogleFonts.jost(fontSize: 30),),
      ),
      body:ListView(
        children: const [
        Card(
          child: ListTile(title: Text("Ajay"),subtitle: Text("1432678950"),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://static-00.iconduck.com/assets.00/profile-circle-icon-512x512-zxne30hp.png")),
          trailing: Icon(Icons.arrow_forward),
          ),
          ),
          Card(child: ListTile(title: Text("Ranjith"),subtitle: Text("4563489760"),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://static-00.iconduck.com/assets.00/profile-circle-icon-512x512-zxne30hp.png")),
          trailing: Icon(Icons.arrow_forward),
          ),
          ),
          Card(child: ListTile(title: Text("Anzil"),subtitle: Text("8764590876"),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://static-00.iconduck.com/assets.00/profile-circle-icon-512x512-zxne30hp.png")),
          trailing: Icon(Icons.arrow_forward),
          ),
          ),
          Card(child: ListTile(title: Text("Anand"),subtitle: Text("5647896789"),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://static-00.iconduck.com/assets.00/profile-circle-icon-512x512-zxne30hp.png")),
          trailing: Icon(Icons.arrow_forward),
          ),
          ),
          Card(child: ListTile(title: Text("Sudarshan"),subtitle: Text("7687898768"),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://static-00.iconduck.com/assets.00/profile-circle-icon-512x512-zxne30hp.png")),
          trailing: Icon(Icons.arrow_forward),
          ),
          ),
          Card(child: ListTile(title: Text("Akash"),subtitle: Text("7864329089"),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://static-00.iconduck.com/assets.00/profile-circle-icon-512x512-zxne30hp.png")),
          trailing: Icon(Icons.arrow_forward),
          ),
          ),
          Card(child: ListTile(title: Text("Alan"),subtitle: Text("8734512324"),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://static-00.iconduck.com/assets.00/profile-circle-icon-512x512-zxne30hp.png")),
          trailing: Icon(Icons.arrow_forward),
          ),
          ),
          Card(child: ListTile(title: Text("Sanjay"),subtitle: Text("3456438967"),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://static-00.iconduck.com/assets.00/profile-circle-icon-512x512-zxne30hp.png")),
          trailing: Icon(Icons.arrow_forward),
          ),
          ),
        ],
        
      
      )  );
  }

}