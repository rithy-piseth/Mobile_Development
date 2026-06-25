
// ---------------------------------------------
// Create a new statefull widget : GroceryForm
// ---------------------------------------------

import 'package:flutter/material.dart';

class GroceryForm extends StatefulWidget {
  const GroceryForm({super.key});

  @override
  State<GroceryForm> createState() => _GroceryFormState();
}

class _GroceryFormState extends State<GroceryForm> {

   String name = "";
   int quantity = 0 ;
  
   void name1(String name2){
    setState(() {
      name = name2;
    });
   }

   void quantity1(String q){
    int? newValue = int.tryParse(q);
    setState(() {
      if(newValue == null || newValue < 0){
        quantity = 0;
      }else{
        quantity = newValue.toInt();
      }
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Add a new item'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: 
          Column(
            
            children: [
              TextField(decoration: InputDecoration(labelText: 'Name'),onChanged: name1,),
              SizedBox(height: 20,),
              TextField(decoration: InputDecoration(labelText: 'Quantity'),onChanged: quantity1,),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                TextButton(onPressed: () {}, child: Text('Reset'),),
                ElevatedButton(onPressed: () {}, child: Text('Add Item'),),
              ],),
              
            ],),

        
      ),
    );
  }
}


// The form shall be composed of 2 text fields:
// -	Name of the grocery item
 //-	Quantity (number only)

// ⚠️  For now we don’t select the grocery type, we assume it’s always food

// The form shall be composed of 2 buttons:
//-	Cancel button
// -	Add item button
//  import 'package:flutter/material.dart';

// class GroceryForm extends StatefulWidget {
//   const GroceryForm ({super.key});

//   @override
//   State<GroceryForm> createState() => _GroceryForm();
// }

// class _GroceryForm extends State<GroceryForm>{
//   String name = "";
//   int quantity = 0 ;
  
//   void name1(String name2){
//     setState(() {
//       name = name2;
//     });
//   }

//   void quantity1(String q){
//     int? newValue = int.tryParse(q);
//     setState(() {
//       if(newValue == null || newValue < 0){
//         quantity = 0;
//       }else{
//         quantity = newValue.toInt();
//       }
//     });
//   }



//   @override
//   Widget build(BuildContext context) {

//     return Padding(
//       padding: EdgeInsets.all(16),
//       child: Column(
//         children: [
//           TextField(
//             decoration: InputDecoration(labelText: "Name"),
//             onChanged: name1
//           ),
//           const SizedBox(height: 12,),
//           TextField(
//             decoration: InputDecoration(labelText: "Quantity"),
//             onChanged: quantity1,
//           ),
//           const SizedBox(height: 16,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               TextButton(onPressed: () {
//                 Navigator.of(context).pop();
//               }, child: Text("Cancel"))
//             ],
//           )
//         ],  
//       ),

    
//     );
//   }
// }