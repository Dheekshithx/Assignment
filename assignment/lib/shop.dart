import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Shop(),
  ));
}

class Shop extends StatelessWidget {
  var image=["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_48yDyFKiZRgCsheMYxyAZv04YkWKXA5RaQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCq1meOrBr8LWS94XReiLxxrPohkEnotvb2A&usqp=CAU",
  "data:image/jpeg;base64,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",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwWlmdKD1AquEK45UH0Ra94Nyoxcf_qlOCaQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0ov_AjnOf2F_9wPXpTATerJXBJGSJIQ6cdA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOKJk5Oz3bRDV-YS4cNzeQq8TzcxCYZqMKeg&usqp=CAU"];

  var name=["Vagabond Sack","Stealla","Whitney belt","Garden Strand","Strut earings","Varsity socks"];
  var price=["120","58","35","98","34","12"];
   Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.settings),
          SizedBox(
            width: 10,
          )
        ],
        title: Text("SHRINE"),
      ),
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(
            List.generate(6, (index) => Card(
              elevation: 10,
              shadowColor: Colors.black,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(image[index])
                          )
                        ),
                      ),
                    ),
                    Text(name[index]),
                    Text("\$ ${price[index]}"),
                  ],
                ),
              ),
            ))
          ),
    );
  }
}
