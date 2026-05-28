import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Container(
        color: Colors.white,
        child: Container(
         color: const Color.fromARGB(255, 91, 192, 238),
         margin: EdgeInsets.all(50),
         padding: EdgeInsets.all(40),
         child: Container(
         decoration: BoxDecoration(
                color: const Color.fromARGB(255, 21, 92, 150),
                borderRadius: BorderRadius.circular(30)
          ),
          child: Center(
            child: Text("CADT STUDENTS",
            style: TextStyle(color: const Color.fromARGB(255, 241, 233, 233), fontSize: 40),),
          ),
         ),
      ),
    ),
  ),
  );
}