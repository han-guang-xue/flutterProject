import 'package:flutter/material.dart';
import 'package:flutter1/app/text/animationHreo.dart';

class Home2Page extends StatelessWidget {
  String name;
  int age;

  Home2Page({Key key, this.name, @required this.age}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name.toString() + '[' + age.toString() + ']'),
        backgroundColor: Color.fromARGB(1, 1, 1, 0),
      ),
      body: HeroAnimation(),
      // bottomNavigationBar: BottomBarWidget(2),
    );
  }
}
