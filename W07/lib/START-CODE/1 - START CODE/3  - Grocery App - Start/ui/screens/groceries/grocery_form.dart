
// ---------------------------------------------
// Create a new statefull widget : GroceryForm
// ---------------------------------------------

// import 'package:flutter/material.dart';

// class GroceryForm extends StatefulWidget {
//   const GroceryForm({super.key});

//   @override
//   State<GroceryForm> createState() => _GroceryFormState();
// }

// class _GroceryFormState extends State<GroceryForm> {

//    String name = "";
//    int quantity = 0 ;

//    // Reset

//    void  reset(){
//     setState(() {
      
//     });
//    }
   
  
//   //  void name1(String name2){
//   //   setState(() {
//   //     name = name2;
//   //   });
//   //  }

//   //  void quantity1(String q){
//   //   int? newValue = int.tryParse(q);
//   //   setState(() {
//   //     if(newValue == null || newValue < 0){
//   //       quantity = 0;
//   //     }else{
//   //       quantity = newValue.toInt();
//   //     }
//   //   });
//   //  }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(Icons.arrow_back),
//         ),
//         title: Text('Add a new item'),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(10),
//         child: 
//           Column(
            
//             children: [
//               TextField(decoration: InputDecoration(labelText: 'Name'),),//onChanged: name1,),
//               SizedBox(height: 20,),
//               TextField(decoration: InputDecoration(labelText: 'Quantity')),//onChanged: quantity1,),
//               SizedBox(height: 20,),
//               Row(mainAxisAlignment: MainAxisAlignment.end, children: [
//                 TextButton(onPressed: () {}, child: Text('Reset'),),
//                 ElevatedButton(onPressed: () {}, child: Text('Add Item'),),
//               ],),
              
//             ],),

        
//       ),
//     );
//   }
// }


// The form shall be composed of 2 text fields:
// -	Name of the grocery item
 //-	Quantity (number only)

// ⚠️  For now we don’t select the grocery type, we assume it’s always food

// The form shall be composed of 2 buttons:
//-	Cancel button
// -	Add item button
import 'package:flutter/material.dart';
import 'package:theory/START-CODE/1%20-%20START%20CODE/3%20%20-%20Grocery%20App%20-%20Start/data/mock_grocery_data.dart';
import 'package:theory/START-CODE/1%20-%20START%20CODE/3%20%20-%20Grocery%20App%20-%20Start/models/grocery.dart';

class GroceryForm extends StatefulWidget {
  const GroceryForm ({super.key});

  @override
  State<GroceryForm> createState() => _GroceryForm();
}

class _GroceryForm extends State<GroceryForm>{

  final textName = TextEditingController();
  final textQuantity = TextEditingController();

  // String name = "";
  // int quantity = 0 ;


  // void onNameChanged(String value){
  //   setState(() {
  //     name = value;
  //   });
  // }

  // void onQuantityChcanged(String q){
  //   int? newValue = int.tryParse(q);
  //   setState(() {
  //     if(newValue == null || newValue < 0){
  //       quantity = 0;

  //       // disaply an error message
  //     }else{
  //       quantity = newValue.toInt();
  //     }
  //   });
  // }

  void clearText(){
    textName.clear();
    textQuantity.clear();
  }

  
void addItem() {
  int? q1 = int.tryParse(textQuantity.text);

  if (q1 == null) return;

  final GroceryItem newItem = GroceryItem(
    id: "ac",
    name: textName.text,
    quantity: q1,
    category: GroceryCategory.meat,
  );

  // allGroceryItems.add(newItem);
  Navigator.pop<GroceryItem>(context,newItem);

}

  // void onSubmit(){
  //   setState(() {
  //     allGroceryItems.add();
  //   });
  // }

  // void onSubmit(){


  //   // get the inputs, valid
  //   //crete the grocery
  //   // pop it or call the callback

  //   Navigator.pop<GroceryItem>(context, 44);
  // }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Add New Items"),
      ),
      body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: textName,
            decoration: InputDecoration(labelText: "Name"),
            //onChanged: onNameChanged
          ),
          const SizedBox(height: 12,),
          TextField(
            controller: textQuantity,
            decoration: InputDecoration(labelText: "Quantity"),
            //onChanged: onQuantityChcanged,
          ),
          const SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {
                clearText();
              }, child: Text("Reset")),
              TextButton(onPressed: () {
                addItem();
              }, child: Text("Add items"))
            ],
          )
        ],  
      ),

    
    ),
    );
  }
}