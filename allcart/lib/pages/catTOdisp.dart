import 'package:flutter/material.dart';
import 'package:allcart/pages/display.dart';
import 'CartScreen.dart';

class catTOdisp extends StatelessWidget {
  final String text1;
  final String text2;
  final String image1;
  final String image2;
  final int price1;
  final int price2;
  final String size;
  final String id1;
  final String id2;
  final String title;

  const catTOdisp(
      {this.text1,
      this.text2,
      this.image1,
      this.image2,
      this.price1,
      this.price2,
      this.size,
      this.id1,
      this.id2,
      this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => CartScreen()));
            },
            icon: Icon(Icons.shopping_bag),
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.deepOrange[300],
        title: Text('$title'),
      ),
      body: Display(
        image1: image1,
        text1: text1,
        price1: price1,
        image2: image2,
        text2: text2,
        price2: price2,
        id1: id1,
        id2: id2,
      ),
    );
  }
}
