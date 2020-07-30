import 'package:flutter/material.dart';
import 'package:flutter1/component/myFloatingActionButton.dart';
import 'package:flutter1/conf/pageConf.dart';
import 'package:flutter1/utils/bottomBar.dart';

class MyMaterialAppWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyMaterialAppState();
  }
}

class MyMaterialAppState extends State<MyMaterialAppWidget> {
  int index = BottomBarConfig.defaultIndex;
  final List<Widget> pages = BottomBarConfig.barPages;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          floatingActionButton: MyFloatingActionButton(),
          body: pages[index],
          bottomNavigationBar: BottomBarWidget(
              index: index,
              success: (selectedIndex) {
                setState(() {
                  this.index = selectedIndex;
                });
              })),
    );
  }
}
