import 'package:flutter/material.dart';
import 'package:flutter1/app/text/animationText1.dart';

class Home1Page extends StatefulWidget {
  String name;
  int age;
  Home1Page({Key key, this.name, this.age}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Home1Page(name: name, age: age);
  }
}

class _Home1Page extends State<Home1Page> with AutomaticKeepAliveClientMixin {
  String name;
  int age;
  _Home1Page({Key key, this.name, this.age});

  var _animatedLogo = AnimatedLogo();

  @override
  void initState() {
    super.initState();
    print("page1 init");
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(this.name.toString() + '[' + age.toString() + ']'),
        backgroundColor: Color.fromARGB(1, 1, 1, 0),
      ),
      body: _animatedLogo,
      // bottomNavigationBar: BottomBarWidget(2),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
