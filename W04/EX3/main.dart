import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.p});

  final ProductInformation p;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Image.asset(p.image, width: 100, height: 100),
          ),

          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(p.title, style: TextStyle(fontSize: 24)),
          ),

          Container(padding: EdgeInsets.all(20), child: Text(p.definition)),
        ],
      ),
    );
  }
}

enum ProductInformation {
  dart(
    title: 'Dart',
    definition: 'the best object language',
    image: 'assets/ex3/dart.png',
  ),

  flutter(
    title: 'Flutter',
    definition: 'the best widget mobile library',
    image: 'assets/ex3/flutter.png',
  ),

  firebase(
    title: 'Firebase',
    definition: 'the best object language',
    image: 'assets/ex3/firebase.png',
  );

  final String title;
  final String definition;
  final String image;

  const ProductInformation({
    required this.title,
    required this.definition,
    required this.image,
  });
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Products")),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(40),
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ProductCard(p: .dart),
                    SizedBox(height: 20),
                    ProductCard(p: .firebase),
                    SizedBox(height: 20),
                    ProductCard(p: .flutter),
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
