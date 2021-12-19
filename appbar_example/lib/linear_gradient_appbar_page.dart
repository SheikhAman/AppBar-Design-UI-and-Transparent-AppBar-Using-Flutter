import 'package:flutter/material.dart';

class LinearGradientAppBar extends StatelessWidget {
  const LinearGradientAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            print('hello');
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        // backgroundColor: Colors.greenAccent, //  backkgroundColor

        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.green, Colors.red],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          )),
        ), // color gradient  dewa jabe
      ),
    );
  }
}
