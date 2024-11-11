import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Page/home/Delvery.dart';
import 'package:foodie/Page/home/Logingpage.dart';
import 'package:foodie/Page/home/Saved.dart';

import 'package:foodie/Page/home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: NavigationBarx());
  }
}

class NavigationBarx extends StatefulWidget {
  const NavigationBarx({super.key});

  @override
  State<NavigationBarx> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarx> {
  int _selectedIndex = 2;
  final List<Widget> _pages = [
    const Delvery(),
    const Savedpage(),
    const HomePageContent(),
    const SearchBar(),
    const logingpage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.yellow,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 300),
        index: _selectedIndex,

        /*  currentIndex: _selectedIndex,*/
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.delivery_dining,
            color: Colors.white,
          ),
          Icon(
            Icons.monitor_heart,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          Icon(
            Icons.account_box,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
