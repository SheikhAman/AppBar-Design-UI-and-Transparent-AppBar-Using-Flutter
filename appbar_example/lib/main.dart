import 'package:appbar_example/simple_appbar_page.dart';
import 'package:appbar_example/transparent_appbar_page.dart';
import 'package:flutter/material.dart';

import 'linear_gradient_appbar_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final sceenss = [
    LinearGradientAppBar(),
    SimpleAppBarPage(),
    TransParentAppBarPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: sceenss,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(size: 0),
          unselectedIconTheme: IconThemeData(size: 0),
          backgroundColor: Color(0xFF363dc7),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          selectedFontSize: 20,
          unselectedFontSize: 19,
          onTap: (index) => setState(() {
                currentIndex = index;
              }),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ' AppBar\nGradient',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'AppBar\nImage',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '   AppBar\nTransparent',
            ),
          ]),
    );
  }
}
