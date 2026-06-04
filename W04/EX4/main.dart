import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("WEATHER"), backgroundColor: Colors.blue),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(40),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Expanded(child:  Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.purple, Colors.purpleAccent],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 20,
                                left: 15,
                                // right: 8,
                              ),
                              child: CircleAvatar(
                                maxRadius: 40,
                                backgroundImage: AssetImage("assets/ex4/cloudy.png"),
                              )
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 15,left: 15),
                                child: Text("PhnomPenh",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,color: Colors.white ),),
                              ),
                              Container(
                                
                                child: Text("Min 10.0*c",style: TextStyle(color: Colors.white38,fontSize: 15),),
                              )
                            ],
                          )
                        ],
                      ),
                    ),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

