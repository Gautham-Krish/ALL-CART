import 'package:flutter/material.dart';
import 'package:allcart/pages/Loading.dart';
import 'package:allcart/authentication_service.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  static const routeName = '/signup';
  const Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();

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
          .signUp(_authData['email'], _authData['password']);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(' Successfully Signed Up')));
      Navigator.of(context).pushReplacementNamed(Loading.routeName);
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
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightGreen[700],
          title: Text('SIGN UP'),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height * 0.05),
                Center(
                  child: Text(
                    'WELCOME',
                    style: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      fontFamily: 'GoblinOne',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
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
                      hintText: 'ENTER NEW EMAIL ID',
                      hintStyle: TextStyle(color: Colors.black26),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Center(
                  child: TextFormField(
                    obscureText: true,
                    controller: _passwordController,
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
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
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
                      if (value.isEmpty || value != _passwordController.text) {
                        return 'invalid password';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                    decoration: InputDecoration(
                      hintText: 'CONFIRM PASSWORD',
                      hintStyle: TextStyle(color: Colors.black26),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Center(
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0),
                            side: BorderSide(color: Colors.green))
                        //textStyle: TextStyle(fontSize: 24),
                        ),
                    onPressed: () {
                      _submit();
                    },
                    child: Text(
                      'CONFIRM',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ));
  }
}
