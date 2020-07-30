import 'package:flutter/material.dart';

class Home4Page extends StatelessWidget {
  String name;
  int age;

  Home4Page({Key key, this.name, @required this.age}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name.toString() + '[' + age.toString() + ']'),
        backgroundColor: Color.fromARGB(1, 1, 1, 0),
      ),
      body: Center(
        child: Text(
          "Page 4",
          style: TextStyle(fontSize: 100.0),
        ),
      ),
      // bottomNavigationBar: BottomBarWidget(2),
    );
  }
}
