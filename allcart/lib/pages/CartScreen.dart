import 'package:flutter/material.dart';
import 'package:allcart/pages/orders.dart';
import 'package:provider/provider.dart';
import 'package:allcart/pages/Cart.dart';
import 'package:allcart/pages/widgets/CartItems.dart';
import 'dart:math';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Razorpay razorpay;
  Function handlerPaymentSucess;
  Function handlerErrorFailure;
  Function handlerExternalWallet;
  void initState() {
    super.initState();
    razorpay = new Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSucess);
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    razorpay.clear();
  }

  void openCheckout(int totalAmt) {
    var options = {
      "key": "rzp_test_QqXy3K3I9k8NZW",
      "amount": '$totalAmt\00',
      "name": " ALL CART",
      "description": "Payment for products purchased",
      "prefil": {
        "contact": "2233445566",
        "email": " guhjsahah.com",
      },
      "external": {
        "wallets": ["paytm"]
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlePaymentSuccess() {
    final cart = Provider.of<Cart>(context);
    print("Payment Success");
    cart.clear();
  }

  void handleErrorFailure() {
    print("PAYMENT ERROR");
  }

  void handleExternalWallet() {
    print("EXTERNAL WALLET");
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final totalAmt = cart.totalAmount;
    Random random = new Random();
    int randomNumber = random.nextInt(06) + 1;
    int randomNumber1 = randomNumber + 2;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[300],
        title: Text(
          'MY CART',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (ctx, i) => CartPdt(
                    cart.items.values.toList()[i].id,
                    cart.items.keys.toList()[i],
                    cart.items.values.toList()[i].price,
                    cart.items.values.toList()[i].quantity,
                    cart.items.values.toList()[i].name)),
          ),
          Text(
            'Your order will be delivered in $randomNumber - $randomNumber1 business days',
            style: TextStyle(color: Colors.black12, fontSize: 12.0),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text(
                    'TOTAL : $totalAmt',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                    ),
                    onPressed: () {
                      cart.clear();
                      CheckoutButton(cart: cart);
                      openCheckout(totalAmt);
                    },
                    child: Text(
                      'PAY NOW',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CheckoutButton extends StatefulWidget {
  final Cart cart;

  const CheckoutButton({
    @required this.cart,
  });
  @override
  _CheckoutButtonState createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text('Checkout'),
        onPressed: widget.cart.totalAmount <= 0
            ? null
            : () async {
                await Provider.of<Orders>(context, listen: false).addOrder(
                    widget.cart.items.values.toList(), widget.cart.totalAmount);
              });
  }
}
