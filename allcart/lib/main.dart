import 'package:allcart/pages/Cart.dart';
import 'package:flutter/material.dart';
import 'package:allcart/pages/Loading.dart';
import 'package:allcart/pages/Home.dart';
import 'package:allcart/authentication_service.dart';
import 'package:provider/provider.dart';
import 'package:allcart/signup.dart';
import 'package:allcart/pages/products.dart';
import 'package:allcart/pages/orders.dart';
import 'package:allcart/pages/CartScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Product(),
        ),
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login App',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: Loading(),
        routes: {
          Signup.routeName: (ctx) => Signup(),
          Loading.routeName: (ctx) => Loading(),
          Home.routeName: (ctx) => Home(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
