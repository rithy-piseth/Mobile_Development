// Start from the exercice 3 code

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(color: Colors.blue),
                child: Align(
                  child: Text("Welcome Professor!", style: TextStyle(
                    color: Colors.white, fontSize: 22
                  )),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 40
                ),
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Align(
                  child: Text("Result",
                  style: TextStyle(color: Colors.white,fontSize: 22),),
                ),
              ),
              Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 50
                    ),
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Align(
                      child: Text("Failed",
                      style: TextStyle(color: Colors.white,fontSize: 22),),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 50
                    ),
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Align(
                      child: Text("Passed",
                      style: TextStyle(color: Colors.white,fontSize: 22),),
                    )
                  ),
                  
                ],
              ),
               Expanded(child: Container()),

              Container(
                width: double.infinity,
                height: 65,
                decoration: BoxDecoration(color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 42, height: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 42, height: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 42, height: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    ),
  );
}

