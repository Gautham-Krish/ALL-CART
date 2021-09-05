import 'package:flutter/material.dart';
import 'package:allcart/pages/expanded.dart';

class Items extends StatelessWidget {
  final String pic;
  final String content;
  final int price;
  final String size;
  final String id;

  const Items({this.pic, this.content, this.price, this.size = "0", this.id});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
          padding: const EdgeInsets.all(15.0),
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => Price(
                          image: pic,
                          text: content,
                          price: price,
                          id: id,
                        )));
          },
          child: CircleAvatar(
            backgroundImage: AssetImage(pic),
            radius: 70.0,
          ),
        ),
        Divider(
          height: 40.0,
        ),
        Text(
          content,
          style: TextStyle(
            fontSize: 15.0,
            fontFamily: 'GoblineOne',
            color: Colors.black54,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          'PRICE: $price Rs',
          style: TextStyle(
            fontSize: 15.0,
            fontFamily: 'GoblineOne',
            color: Colors.redAccent[900],
          ),
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}
