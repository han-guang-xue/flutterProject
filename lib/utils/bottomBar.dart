import 'package:flutter/material.dart';
import 'package:flutter1/conf/pageConf.dart';

class BottomBarWidget extends StatefulWidget {
  int index = 0;

  Function success;

  BottomBarWidget({this.index, this.success});

  @override
  State<StatefulWidget> createState() {
    return BottomBarState(index: index, success: success);
  }
}

class BottomBarState extends State<BottomBarWidget> {
  int index = 0;
  Function success;
  BottomBarState({this.index, this.success});
  final List<BottomNavigationBarItem> barItems = BottomBarConfig.barItems;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var bottomNavigationBar = BottomNavigationBar(
      items: barItems,
      currentIndex: this.index,
      backgroundColor: Colors.red,
      selectedFontSize: 15.0,
      selectedItemColor: Colors.green,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: TextStyle(color: Colors.red),
      unselectedLabelStyle: TextStyle(color: Colors.blue),
      unselectedIconTheme: IconThemeData(color: Colors.green[100]),
      type: BottomNavigationBarType.shifting,
      onTap: (selectedIndex) {
        if (selectedIndex != index) {
          this.setState(() {
            this.index = selectedIndex;
          });
          success(index);
        }
      },

      // onTap: (index) => {
      //   if (index != curIndex) {
      //     curIndex = index;

      //   }
      // },
    );

    return Container(
      child: bottomNavigationBar,
      height: 80.0,
    );
  }
}
