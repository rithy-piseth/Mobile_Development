import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Favorite Card",style: TextStyle(fontSize: 22),),backgroundColor: Colors.blue,),
      body: Column(
        children: [
          Favorite()
        ],
      ),
    ),
  ));
}

class Favorite extends StatefulWidget{
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _Favorite() ;
}

class _Favorite extends State<Favorite>{
  bool like = false;
  void isFavorite(){
    setState(() {
      like =!like;
    });
  }

  @override
  Widget build(BuildContext context) {

    IconData ic = Icons.favorite_border ;
    Color? c;

    if(like == true){
      ic = Icons.favorite;
      c  = Colors.red;
    }

    return Container(height: 100, 
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
      ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child:Text("Title",style:TextStyle(color: Colors.blue,fontSize: 20),) ,),
                  Expanded(child:Text("Description")) 
                 ],
              ),
              Spacer(),
              IconButton(onPressed: isFavorite, icon: Icon(ic),color: c,),
            ],
          ),
          );
  }
}