import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget{
    const MyWidget({ super.key , required this.icon, required this.text, required this.color});

    final IconData icon;
    final String text;
    final Color color;
    @override
  Widget build(BuildContext context) {
    
    return Container(
                  height: 100, width: 400,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 20),
                        child: Icon(icon),
                      ),
                      Text(text,
                      style: TextStyle(fontSize: 24),),
                    ],
                  ),
                );
  }
}

void main(){
    runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "My Hobbies"
            ),
          ),
          body: Container(
            color: Colors.grey,
            padding: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyWidget(icon: Icons.travel_explore, text: "Travel", color: Colors.blue),
                SizedBox(height: 20,),
                MyWidget(icon: Icons.skateboarding, text: "Skating", color: CupertinoColors.systemYellow),
                SizedBox(height: 20,),
                MyWidget(icon: Icons.travel_explore, text: "Travel", color: Colors.deepPurple),
                SizedBox(height: 20,),
                MyWidget(icon: Icons.skateboarding, text: "Skating", color: Colors.pink)
              ],
            ),
          )
        ),
      )
    );
}