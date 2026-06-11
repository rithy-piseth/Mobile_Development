import 'package:flutter/material.dart';
        
        // ),
void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons",),backgroundColor: const Color.fromARGB(255, 33, 243, 240),
        ),
        body: Padding(padding: EdgeInsets.all(20),child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Buton(),
          SizedBox(height: 15,),
          Buton(),
          ],
        ),),
      ),
    ));

class Buton extends StatefulWidget{
  const Buton({super.key});

  @override
  State<Buton> createState() => _ButonState();
  
}

class _ButonState extends State<Buton>{

  bool selected = false;

  void changeButton(){
    setState(() {
      if (selected == false){
        selected = true;
      }else {
        selected = false;
      }
    });
  }

  @override
  Widget build(context){

    String buttonText = "Not Select";
    Color textColor = Colors.black;
    Color backgroundColor = Colors.blue.shade50;

    if(selected == true){
      buttonText = "Select";
      textColor = Colors.white;
      backgroundColor = Colors.blue.shade500;
    }

    return SizedBox(
                width: 400,
                height: 100,
                child: ElevatedButton(
                    onPressed: changeButton,
                    style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
                    child: Center(
                      child: Text(buttonText,style: TextStyle(color: textColor),),
                    )),
              );
  }
}
