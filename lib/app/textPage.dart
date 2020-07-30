import 'package:flutter/material.dart';
import 'package:flutter1/conf/deviceInfo.dart';

class TextPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextPageState();
  }
}

class TextPageState extends State<TextPageWidget> {
  @override
  Widget build(BuildContext context) {
    var container = Container(
      color: Colors.greenAccent,
      child: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "这个是我的照片",
                  style: TextStyle(
                    color: Colors.red[300],
                    fontSize: 25,
                    backgroundColor: Colors.amber[0],
                  ),
                ),
                Icon(Icons.ac_unit)
              ],
            ),
            width: DeviceInfo.getInstance().screenWidth,
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Image.asset(
              "assets/images/mmexport1578911837159.jpg",
              fit: BoxFit.cover,
            ),
            width: DeviceInfo.getInstance().screenWidth,
            height: DeviceInfo.getInstance().screenWidth,
          ),
          Text(
            "拍摄于 2012 年 12 月 20 日",
            textDirection: TextDirection.ltr,
            style:
                TextStyle(fontFamily: "assets/fonts/Roboto/Roboto-Black.ttf"),
          ),
        ],
      ),
    );

    var listView = ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[container, container, container, container],
    );

    return listView;
  }
}
