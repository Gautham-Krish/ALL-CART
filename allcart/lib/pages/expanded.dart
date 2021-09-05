import 'package:allcart/pages/CartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Cart.dart';
import 'package:allcart/pages/products.dart';
import 'package:provider/provider.dart';

class Price extends StatelessWidget {
  final String image;
  final int price;
  final String text;
  final String id;

  const Price({this.image, this.price, this.text, this.id});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedPdt = Provider.of<Products>(context).findById(id);
    final cart = Provider.of<Cart>(context);
    final snackBar = SnackBar(
      content: Text('$text added to cart'),
      duration: const Duration(seconds: 1),
    );
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[300],
          title: Text('$text'),
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
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Center(
                  child: Image(
                    image: AssetImage(image),
                    height: 500.0,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '$text',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '$price Rs',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                      ),
                      onPressed: () {
                        cart.addItem(id, loadedPdt.name, loadedPdt.cost);
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.white),
                      )),
                  TextButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => CartScreen()));
                    },
                    child: Text('Go to Cart',
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
