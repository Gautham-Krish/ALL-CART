import 'package:flutter/material.dart';
import 'package:allcart/pages/Home.dart';
import 'package:allcart/authentication_service.dart';
import 'package:provider/provider.dart';
import 'package:allcart/signup.dart';

class Loading extends StatefulWidget {
  const Loading({Key key}) : super(key: key);
  static const routeName = '/login';

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  Map<String, String> _authData = {'email': '', 'password': ''};
  void _showErrorDialog(String msg) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text('An Error Occured'),
              content: Text(msg),
              actions: <Widget>[
                TextButton(
                  child: Text('Okay'),
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                )
              ],
            ));
  }

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    try {
      await Provider.of<Authentication>(context, listen: false)
          .logIn(_authData['email'], _authData['password']);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(' Successfully Signed In')));
      Navigator.of(context).pushReplacementNamed(Home.routeName);
    } catch (error) {
      var errorMessage = 'Authentication Failed. Please try again later.';
      _showErrorDialog(errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text(
            'ALL  CART',
            style: TextStyle(fontFamily: 'PlayfairDisplaySC'),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.lightGreen[700],
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/allcart-logo.png'),
                        radius: 60.0,
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            fontFamily: 'GoblinOne'),
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    Center(
                      child: TextFormField(
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value.isEmpty || !value.contains('@')) {
                            return 'invalid email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _authData['email'] = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'EMAIL ID',
                          hintStyle: TextStyle(color: Colors.black26),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.0)),
                            borderSide:
                                BorderSide(color: Colors.green, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.0)),
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Center(
                      child: TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty || value.length <= 5) {
                            return 'invalid password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _authData['password'] = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'PASSWORD',
                          hintStyle: TextStyle(color: Colors.black26),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.0)),
                            borderSide:
                                BorderSide(color: Colors.green, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.0)),
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                    Center(
                      child: TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.0),
                                side: BorderSide(color: Colors.green))),
                        onPressed: () {
                          _submit();
                        },
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                    Center(
                      child: TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.0),
                                side: BorderSide(color: Colors.green))),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(Signup.routeName);
                        },
                        child: Text(
                          'CREATE ACCOUNT',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            )));
  }
}
