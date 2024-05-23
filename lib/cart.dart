// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<String> cartItems = [
    'assets/regular_fit_cart_1.png',
    'assets/regular_fit_polo_cart_2.png',
    'assets/regular_fit_v_cart_3.png'
  ];
  List<List<String>> uniqueTexts = [
    ['Regular fit slogan', 'Size L', 'PKR 1,190'],
    ['Regular fit polo', 'Size M', 'PKR 1,100'],
    ['Regular fit v-neck', 'Size L', 'PKR 1,290'],
  ];
  List<int> quantities = [2, 2, 1];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.07,
                    right: MediaQuery.of(context).size.width * 0.05,
                    bottom: MediaQuery.of(context).size.height * 0.01),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height * 0.48,
                        child: ListView.builder(
                          itemCount: cartItems.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 7.0),
                              child: Container(
                                height: 102.0,
                                padding: EdgeInsets.only(
                                    left: 12.0, top: 12.0, bottom: 12.0),
                                child: Stack(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Image.asset(
                                          cartItems[index],
                                          width: 85.0,
                                          height: 85.0,
                                          fit: BoxFit.fill,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(uniqueTexts[index][0],
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'GeneralSans-Medium',
                                                      fontSize: 14.0)),
                                              Text(uniqueTexts[index][1],
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'GeneralSans-Regular',
                                                      fontSize: 12.0)),
                                              SizedBox(height: 20.0),
                                              Text(uniqueTexts[index][2],
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'GeneralSans-SemiBold',
                                                      fontSize: 14.0)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      right: 12.0,
                                      child: Image.asset(
                                          'assets/trash-icon.png',
                                          width: 16.0,
                                          height: 16.0),
                                    ),
                                    Positioned(
                                      bottom: 0.0,
                                      right: 12.0,
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black
                                                      .withOpacity(0.2)),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            padding: EdgeInsets.all(3.0),
                                            child: Image.asset(
                                                'assets/minus-icon.png'),
                                          ),
                                          SizedBox(width: 10.0),
                                          Text(quantities[index].toString()),
                                          SizedBox(width: 10.0),
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black
                                                      .withOpacity(0.2)),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            padding: EdgeInsets.all(3.0),
                                            child: Image.asset(
                                                'assets/plus-icon.png'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFFF2F2F2),
                                ),
                              ),
                            );
                          },
                        )),
                    Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Add a voucher',
                            hintStyle: TextStyle(
                              fontFamily: 'GeneralSans-Regular',
                              fontSize: 16.0,
                              color: Colors.black.withOpacity(0.6),
                            ),
                            filled: true,
                            fillColor: Color(0xFFF2F2F2),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 20.0),
                          ),
                        ),
                        SizedBox(height: 30.0),
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Sub-total',
                                    style: TextStyle(
                                        fontFamily: 'GeneralSans-Regular',
                                        fontSize: 16.0)),
                                Text('PKR 5,870 ',
                                    style: TextStyle(
                                        fontFamily: 'GeneralSans-Medium',
                                        fontSize: 16.0)),
                              ],
                            ),
                            SizedBox(height: 17.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('VAT (%)',
                                    style: TextStyle(
                                        fontFamily: 'GeneralSans-Regular',
                                        fontSize: 16.0)),
                                Text('PKR 0.00',
                                    style: TextStyle(
                                        fontFamily: 'GeneralSans-Medium',
                                        fontSize: 16.0)),
                              ],
                            ),
                            SizedBox(height: 17.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Shipping fee',
                                    style: TextStyle(
                                        fontFamily: 'GeneralSans-Regular',
                                        fontSize: 16.0)),
                                Text('PKR 80',
                                    style: TextStyle(
                                        fontFamily: 'GeneralSans-Medium',
                                        fontSize: 16.0)),
                              ],
                            ),
                            SizedBox(height: 17.0),
                            Divider(color: Colors.black.withOpacity(0.2)),
                            SizedBox(height: 7.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Total',
                                    style: TextStyle(
                                        fontFamily: 'GeneralSans-Regular',
                                        fontSize: 16.0)),
                                Text('PKR 5,950',
                                    style: TextStyle(
                                        fontFamily: 'GeneralSans-SemiBold',
                                        fontSize: 16.0)),
                              ],
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.06),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  // child: Container(
                                  //   decoration: BoxDecoration(
                                  //     color: Colors.white,
                                  //     border: Border(top: BorderSide(color: Colors.grey)),
                                  //   ),
                                  //   width: double.infinity,
                                  // height: 120.0,
                                  child: Center(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.06,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(builder: (context) => SignupPage()),
                                          // );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12.0)),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Text(
                                              'Checkout',
                                              style: TextStyle(
                                                fontFamily:
                                                    'GeneralSans-Medium',
                                                fontSize: 16.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 8.0),
                                            Icon(Icons.arrow_forward_rounded,
                                                color: Colors.white),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  //),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            SafeArea(
              top: false,
              child: Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      top: MediaQuery.of(context).size.height * 0.03,
                      right: MediaQuery.of(context).size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        'My Cart',
                        style: TextStyle(
                            fontFamily: 'GeneralSans-SemiBold',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: Image.asset('assets/noti.png'),
                        onPressed: () {
                          // Handle notification icon press
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
