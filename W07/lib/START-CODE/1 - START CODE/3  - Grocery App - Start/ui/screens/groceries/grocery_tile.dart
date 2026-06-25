
// ---------------------------------------------
// Create a new stateless widget : GroceryTile
// ---------------------------------------------

import 'package:flutter/material.dart';
import 'package:theory/START-CODE/1%20-%20START%20CODE/3%20%20-%20Grocery%20App%20-%20Start/models/grocery.dart';

class GroceryTile extends StatelessWidget{
  const GroceryTile ({super.key,required this.item});

  final GroceryItem item;
  @override
  Widget build(BuildContext context) {
     
    return ListTile(
      leading: Container(
        width: 24,
        height: 24,
        color: item.category.color,
      ),
      title: Text(item.name),
      trailing: Text("${item.quantity}"),
    );
  }
}

// The widget shall take as required parameter a Grocery  

// 	Use a ListTile widget to layout the elements


// https://api.flutter.dev/flutter/material/ListTile-class.html