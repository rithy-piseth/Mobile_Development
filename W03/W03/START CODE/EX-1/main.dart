import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: const Text("Hello My name is Piseth",
          style: TextStyle(color: Colors.pink, fontStyle: FontStyle.italic),),
        ),
      ),
    )
  );
}