// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'details.dart';
import 'cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  int _selectedIndexIcon = 0;
  List<String> buttonNames = ['All', 'Men', 'Women', 'Kids'];
  List<Map<String, String>> images = [
    {
      'image': 'assets/regular_fit.png',
      'title': 'Regular fit slogan',
      'subtitle': 'PKR 1.190'
    },
    {
      'image': 'assets/regular_fit_polo.png',
      'title': 'Regular fit polo',
      'subtitle': 'PKR 1,100 -62%'
    },
    {
      'image': 'assets/regular_fit_block.png',
      'title': 'Regular fit color block',
      'subtitle': 'PKR 1,690'
    },
    {
      'image': 'assets/regular_fit_v.png',
      'title': 'Regular fit v-neck',
      'subtitle': 'PKR 1,290'
    },
    {
      'image': 'assets/regular_pink.png',
      'title': 'Regular pink',
      'subtitle': 'PKR 2,000'
    },
    {
      'image': 'assets/regular_black.png',
      'title': 'Regular black',
      'subtitle': 'PKR 1,000'
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndexIcon = index;
    });
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CartPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.07,
                        right: MediaQuery.of(context).size.width * 0.05),
                    child: Text(
                      'Discover',
                      style: TextStyle(
                        fontFamily: 'GeneralSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 32.0,
                        letterSpacing: -1.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.5),
                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.07),
                    child: Image.asset('assets/noti.png'),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(right: 10.0, top: 15.0, left: 20.0),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search anything',
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
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: SizedBox(
                            width: 10.0,
                            height: 20.0,
                            child: Image.asset('assets/search.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15.0, left: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    width: 50.0,
                    height: 50.0,
                    child: Image.asset('assets/filter.png'),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: selectedIndex == index
                          ? Colors.black
                          : Colors.grey[200],
                      padding: EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Text(
                      buttonNames[index],
                      style: TextStyle(
                        fontSize: 16.0,
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.05,
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.02),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 3,
                  ),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            if (images[index]['image'] ==
                                'assets/regular_fit.png') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsPage()),
                              );
                            }
                          },
                          child: Expanded(
                            child: Image.asset(images[index]['image']!,
                                fit: BoxFit.scaleDown),
                          ),
                        ),
                        Text(images[index]['title']!,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(images[index]['subtitle']!,
                            style: TextStyle(color: Colors.grey)),
                      ],
                    );
                  },
                ),
              ),
            ]),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndexIcon,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset('assets/home_icon_2.png'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/saved_icon_2.png'),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/cart_icon_2.png'),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/settings_icon_2.png'),
                label: 'Settings',
              ),
            ],
            //showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: _onItemTapped,
            // Handle navigation here.
          ),
        ));
  }
}
