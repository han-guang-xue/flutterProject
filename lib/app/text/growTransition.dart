import 'package:flutter/material.dart';

/** AnimatedBuilder，AnimatedBuilder将其传递给匿名构造器， 然后将该对象用作其子对象。最终的结果是AnimatedBuilder插入到渲染树中的两个widget之间 */
class GrowTransition extends StatelessWidget {
  Widget child;
  Animation animation;
  Function success;
  GrowTransition({Key key, this.child, this.animation, this.success})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Container(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}
