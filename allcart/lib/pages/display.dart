import 'package:flutter/material.dart';
import 'package:allcart/pages/items.dart';

class Display extends StatelessWidget {
  final String image;
  final String text;
  final String text1;
  final String text2;

  final int price1;
  final int price2;

  final String image1;
  final String image2;

  final String id1;
  final String id2;

  Display(
      {this.text,
      this.image,
      this.text1,
      this.text2,
      this.price1,
      this.price2,
      this.image1,
      this.image2,
      this.id1,
      this.id2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Items(
                pic: '$image1',
                content: '$text1',
                price: price1,
                id: id1,
              ),
              Items(
                pic: '$image2',
                content: '$text2',
                price: price2,
                id: id2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
