// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'signup.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/welcome_background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 30,
              child: Image.asset('assets/welcome_manmodel.png'),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.05,
              child: Image.asset('assets/welcome_text.png'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  color: Colors.white,
                  height: 100,
                  width: double.infinity,
                  child: Center(
                      child: SizedBox(
                          width: 350,
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()),
                              );
                            },
                            backgroundColor: Colors.black,
                            // label: Text(
                            //   'Get Started',
                            //   style: TextStyle(
                            //     fontSize: 18.0,
                            //     color: Colors.white,
                            //   ),
                            // ),
                            // backgroundColor: Colors.black,
                            // icon: Icon(Icons.arrow_forward_rounded, color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Get Started',
                                  style: TextStyle(
                                    fontFamily: 'GeneralSans',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                Icon(Icons.arrow_forward_rounded,
                                    color: Colors.white),
                              ],
                            ),
                          )))),
            ),
          ],
        ),
      ),
    );
  }
}
