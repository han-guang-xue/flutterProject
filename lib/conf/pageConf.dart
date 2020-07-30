import 'package:flutter/material.dart';
import 'package:flutter1/app/home1.dart';
import 'package:flutter1/app/home2.dart';
import 'package:flutter1/app/home3.dart';
import 'package:flutter1/app/home4.dart';

/**
 * 底部工具栏配置
 */
class BottomBarConfig {
  // ignore: slash_for_doc_comments
  /** 配置底部菜单来，文字和图标 */
  static final List<BottomNavigationBarItem> barItems = [
    BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text("项目1")),
    BottomNavigationBarItem(icon: Icon(Icons.fastfood), title: Text("项目2")),
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("项目3")),
    BottomNavigationBarItem(icon: Icon(Icons.work), title: Text("项目4")),
  ];

  // ignore: slash_for_doc_comments
  /** 配置 bottomBar 页面 */
  static final List<Widget> barPages = [
    Home1Page(age: 15, name: "page 1"),
    Home2Page(age: 13, name: "page 2"),
    Home3Page(age: 12, name: "page 3"),
    Home4Page(age: 16, name: "page 4"),
  ];

  // ignore: slash_for_doc_comments
  /** 配置默认选中下标 */
  static final int defaultIndex = 1;
}
