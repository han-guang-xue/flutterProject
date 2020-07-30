import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFloatingActionButton();
  }
}

class _MyFloatingActionButton extends State<MyFloatingActionButton> {
  double width = 50.0;
  double height = 30.0;
  String title = "nice";
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    var container = new Container(
      // gray box
      child: new Center(
        child: new Transform(
          child: new Container(
            // red box
            child: new Text(
              "Lorem ipsum",
              textAlign: TextAlign.center,
            ),
            decoration: new BoxDecoration(
              color: Colors.red[400],
            ),
            padding: new EdgeInsets.all(16.0),
          ),
          alignment: Alignment.center,
          transform: new Matrix4.identity()..rotateZ(15 * 3.1415927 / 180),
        ),
      ),
      width: 320.0,
      height: 240.0,
      color: Colors.grey[300],
    );

    var animatedContainer = AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      width: width,
      height: height,
      color: color,
      curve: Curves.fastOutSlowIn,
      child: GestureDetector(
        onTap: () {
          width = height * width;
          setState(() {
            height = width / height;
            width = width / height;
            title = "nice" + (width * height).toString();
            color = Colors.blueAccent;
          });
        },
        child: Text(title),
      ),
    );
    return container;
  }
}
