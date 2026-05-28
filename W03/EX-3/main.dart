import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        color: Colors.grey,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 700,
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 192, 218, 240),
                  borderRadius: BorderRadius.circular(150),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("OOP",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                  ),
                  )
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 700,
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 121, 186, 242),
                  borderRadius: BorderRadius.circular(150),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("DART",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                  ),
                  )
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 700,
                height: 70,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue[300]!,
                      Colors.blue[600]!
                    ]
                  ),
                  borderRadius: BorderRadius.circular(150),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("FLUTTER",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                  ),
                  )
                ),
              ),

              
              
            ],
          ),
        ),
      ),
    ),
  );
}