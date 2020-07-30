import 'package:flutter/material.dart';

// ignore: slash_for_doc_comments
/** AnimatedWidget(基类)中会自动调用addListener()和setState() */
class AnimatedLogo2 extends AnimatedWidget {
  static final _opacityTween = new Tween<double>(begin: 0.1, end: 1.0);
  static final _sizeTween = new Tween<double>(begin: 0.0, end: 300.0);

  AnimatedLogo2({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Center(
        child: Opacity(
      opacity: _opacityTween.evaluate(animation),
      child: Container(
        margin: EdgeInsets.all(50.0),
        height: _sizeTween.evaluate(animation),
        width: _sizeTween.evaluate(animation),
        child: FlutterLogo(size: 100.0),
      ),
    ));
  }
}
