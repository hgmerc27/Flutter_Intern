// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_3/home.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
          body: SingleChildScrollView(
              child: Column(children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.07,
              top: MediaQuery.of(context).size.height * 0.07,
              right: MediaQuery.of(context).size.width * 0.07),
          child: Text(
            'Create an account',
            style: TextStyle(
              fontSize: 32.0,
              fontFamily: 'GeneralSans',
              fontWeight: FontWeight.w600,
              letterSpacing: -0.5,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            'Let\'s create your account',
            style: TextStyle(
              fontFamily: 'GeneralSans-Regular',
              fontSize: 16.0,
            ),
          ),
        ),
        Container(
            //alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16.0, top: 30.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Full name",
                  style: TextStyle(
                    fontFamily: 'GeneralSans-Medium',
                    fontSize: 16.0,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your full name',
                    hintStyle: TextStyle(
                      fontFamily: 'GeneralSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  ),
                ),
              ],
            )),
        Container(
            padding: EdgeInsets.only(left: 16.0, top: 20.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Email",
                  style: TextStyle(
                    fontFamily: 'GeneralSans',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email address',
                    hintStyle: TextStyle(
                      fontFamily: 'GeneralSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  ),
                ),
              ],
            )),
        Container(
            padding: EdgeInsets.only(left: 16.0, top: 20.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Password",
                  style: TextStyle(
                    fontFamily: 'GeneralSans',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
                TextFormField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      fontFamily: 'GeneralSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: _togglePasswordVisibility,
                    ),
                  ),
                ),
              ],
            )),
        Container(
            //alignment: Alignment.center,
            //padding: EdgeInsets.only(left: 16.0, top: 25.0, right: 16.0),
            padding: EdgeInsets.only(top: 20.0),
            width: 360,
            height: 75,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'GeneralSans',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )),
        Container(
          padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Divider(
                  color: Colors.grey,
                  height: 1.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Or',
                  style: TextStyle(
                    fontFamily: 'GeneralSans',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Colors.grey,
                  height: 1.0,
                ),
              ),
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 20.0),
            width: 360,
            height: 75,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  side: BorderSide(color: Colors.black, width: 0.5),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    'assets/logos_google-icon.png',
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'Sign Up with Google',
                    style: TextStyle(
                      fontFamily: 'GeneralSans',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )),
        Container(
            padding: EdgeInsets.only(top: 10.0),
            width: 360,
            height: 70,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 30, 114, 239),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    'assets/logos_facebook.png',
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'Sign Up with Facebook',
                    style: TextStyle(
                      fontFamily: 'GeneralSans',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )),
        Container(
          padding: EdgeInsets.only(top: 60.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Already a member?',
                style: TextStyle(
                  fontFamily: 'GeneralSans',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  'Login In',
                  style: TextStyle(
                    fontFamily: 'GeneralSans',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]))),
    );
  }
}
