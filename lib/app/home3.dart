import 'package:flutter/material.dart';

import 'text/animationHreo.dart';

class Home3Page extends StatelessWidget {
  String name;
  int age;

  Home3Page({Key key, this.name, @required this.age}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name.toString() + '[' + age.toString() + ']'),
        backgroundColor: Color.fromARGB(1, 1, 1, 0),
      ),
      body: HeroAnimation1(),
      // bottomNavigationBar: BottomBarWidget(2),
    );
  }
}
