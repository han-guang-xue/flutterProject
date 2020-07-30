import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter1/conf/deviceInfo.dart';

class PhotoHero extends StatelessWidget {
  final String photo;
  final VoidCallback onTap;
  final double width;

  const PhotoHero({Key key, this.photo, this.onTap, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    /** SizedBox:  能强制子控件具有特定宽度、高度或两者都有,使子控件设置的宽高失效 */
    return SizedBox(
      width: width,
      child: Hero(
          tag: photo,
          child: Material(
            color: Colors.red,
            child: InkWell(
              onTap: onTap,
              child: new Image.asset(
                photo,
                fit: BoxFit.cover,
              ),
            ),
          )),
    );
  }
}

class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var timeDilation = 5.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hore 动画测试"),
      ),
      body: Center(
        child: PhotoHero(
          photo: "assets/images/mmexport1578911840927.jpg",
          width: 300,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return new Scaffold(
                  appBar: new AppBar(
                    title: Text('AppBarHeight:' +
                        DeviceInfo.getInstance().appBarHeight.toString()),
                    actions: <Widget>[
                      Container(
                          margin: EdgeInsets.only(right: 60),
                          width: DeviceInfo.getInstance().appBarHeight,
                          height: DeviceInfo.getInstance().appBarHeight,
                          child: ClipOval(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: PhotoHero(
                                photo:
                                    'assets/images/mmexport1578911840927.jpg',
                                width: 50,
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ))
                    ],
                  ),
                  body: new Container(
                    width: 300,
                    height: 300,
                    // The blue background emphasizes that it's a new route.
                    color: Colors.lightBlueAccent,
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.topLeft,
                    child: ClipOval(
                      child: SizedBox(
                        width: 300,
                        height: 300,
                        child: Image.asset(
                          "assets/images/mmexport1578911840927.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ));
          },
        ),
      ),
    );
  }
}

class PhotoHero1 extends StatelessWidget {
  final String photo;
  final VoidCallback onTap;
  final double width;

  const PhotoHero1({Key key, this.photo, this.onTap, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    /** SizedBox:  能强制子控件具有特定宽度、高度或两者都有,使子控件设置的宽高失效 */
    return Material(
      color: Theme.of(context).primaryColor.withOpacity(0.25),
      child: InkWell(
        onTap: onTap,
        child: new Image.asset(
          photo,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class RadialExpansion extends StatelessWidget {
  final double maxPadius;
  final clipRectSize;
  final Widget child;

  const RadialExpansion({Key key, this.maxPadius, this.child})
      : clipRectSize = 2.0 * (maxPadius / sqrt2),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Center(
        child: SizedBox(
            width: clipRectSize,
            height: clipRectSize,
            child: ClipRect(
              child: child,
            )),
      ),
    );
  }
}

class HeroAnimation1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hore 动画测试"),
      ),
      body: Center(
        child: PhotoHero1(
          photo: "assets/images/mmexport1578911840927.jpg",
          width: 300,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return new Scaffold(
                  appBar: new AppBar(
                    title: const Text('Flippers Page'),
                  ),
                  body: new Container(
                    // The blue background emphasizes that it's a new route.
                    color: Colors.lightBlueAccent,
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.topLeft,
                    child: new PhotoHero1(
                      photo: 'assets/images/mmexport1578911840927.jpg',
                      width: 100.0,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                );
              },
            ));
          },
        ),
      ),
    );
  }
}
