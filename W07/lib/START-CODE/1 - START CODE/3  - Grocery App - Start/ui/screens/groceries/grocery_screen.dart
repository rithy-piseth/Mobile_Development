import 'package:flutter/material.dart';
import 'package:theory/START-CODE/1%20-%20START%20CODE/3%20%20-%20Grocery%20App%20-%20Start/data/mock_grocery_data.dart';
import 'package:theory/START-CODE/1%20-%20START%20CODE/3%20%20-%20Grocery%20App%20-%20Start/models/grocery.dart';
import 'package:theory/START-CODE/1%20-%20START%20CODE/3%20%20-%20Grocery%20App%20-%20Start/ui/screens/groceries/grocery_form.dart';
import 'grocery_tile.dart';
class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  void onCreate() async {
    
    // ---------------------------------------------
    // Navigate to the form screen using showModalBottomSheet
    // ---------------------------------------------

   final newItem = await showModalBottomSheet<GroceryItem>(context: context, builder: (context)=> GroceryForm());

   if (newItem == null) return;

   setState(() {
     allGroceryItems.add(newItem);
   });

    // https://api.flutter.dev/flutter/material/showModalBottomSheet.html
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: Text('No items added yet.'));

    if (allGroceryItems.isNotEmpty) {

      content = ListView.builder(itemCount: allGroceryItems.length,itemBuilder: (context, index) {
        return GroceryTile(item: allGroceryItems[index] );
      },);
      // ---------------------------------------------
      //  Loop on groceries with an ListView builder
      //  For each grocery items, create a GroceryTile (grocery_tile.dart)
      // ---------------------------------------------
      // https://api.flutter.dev/flutter/widgets/ListView-class.html
      
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [IconButton(onPressed: onCreate, icon: const Icon(Icons.add))],
      ),
      body: content,
    );
  }
}
