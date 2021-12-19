import 'package:flutter/material.dart';

class SimpleAppBarPage extends StatelessWidget {
  const SimpleAppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          titleSpacing: 0, // leading property and text widget has a spacing
          // centerTitle: true,
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
          // elevation: 20, // appbar  shadow
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1475359524104-d101d02a042b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=994&q=80'),
                fit: BoxFit.cover,
              ),
            ),
          ), // color gradient  dewa jabe

          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.list_alt),
                text: 'Feed',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Setting',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          buildPage('Home Page'),
          buildPage('Feed Page'),
          buildPage('Profile Page'),
          buildPage('Settings Page'),
        ]),
      ),
    );
  }

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}
