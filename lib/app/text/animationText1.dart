import 'package:flutter/material.dart';
import 'package:flutter1/app/text/growTransition.dart';

import 'animationLogo.dart';

/**
 * 练习动画 Tween 基础
 */
class AnimatedLogo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedLogo();
  }
}

/** 继承 SingleTickerProviderStateMixin 类是为了防止超出屏幕之外的动画渲染,消耗不必要的性能 */
class _AnimatedLogo extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _animation =
        // Tween<double>(begin: 0.0, end: 300.0).animate(_animationController)
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((state) {
            setState(() {
              if (state == AnimationStatus.dismissed) {
                _animationController.forward();
              } else if (state == AnimationStatus.completed) {
                _animationController.reverse();
              }
            });
          });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    var growTransition = GrowTransition(
      animation: _animation,
      child: new Container(
        margin: new EdgeInsets.symmetric(vertical: 10.0),
        child: new FlutterLogo(),
      ),
    );
    var animatedLogo2 = AnimatedLogo2(animation: _animation);
    // return growTransition;
    return animatedLogo2;
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
