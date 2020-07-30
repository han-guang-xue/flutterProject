import 'package:flutter/material.dart';
import 'app/home1.dart';
import 'utils/mainhome.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyMaterialAppWidget();
  }
}

class FloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Home1Page(age: 18, name: "许仙");
            },
          ));
        },
        child: Text("nice"),
      ),
    );
  }
}
