import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  const Button({super.key,required this.icon, required this.text, required this.color, required this.locate});
  final String text;
  final Color color;
  final IconData icon;
  final Locate locate;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
              height: 60, width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if(locate == Locate.left)...[
                    Text(text,style: TextStyle(fontSize: 22),),
                     Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(icon))
                  ],

                  if(locate == Locate.right)...[
                    Text(text,style: TextStyle(fontSize: 22),),
                     Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(icon))
                  ]
                ],
              )
            );
  }
}
enum Locate {right,left}


void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Custom Buttons",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold ),),backgroundColor: Colors.red,),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [ 
            Button(icon: Icons.check, text: "Submit", color: Colors.blue, locate: Locate.left),
            SizedBox(height: 25,),
            Button(icon: Icons.access_time_rounded , text: "Time", color: Colors.green, locate: .right),
            SizedBox(height: 25,),
            Button(icon: Icons.facebook_sharp, text: "Account", color: Colors.black38, locate: .right)
          ],
        ),
      ),
      ),
    )
  );
}