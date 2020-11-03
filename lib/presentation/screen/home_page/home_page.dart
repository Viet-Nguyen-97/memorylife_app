import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:memory_lifes/app/constants/barrel_constants.dart';
import 'package:memory_lifes/presentation/screen/menu/account.dart';
import 'package:memory_lifes/presentation/screen/menu/calendar.dart';
import 'package:memory_lifes/presentation/screen/menu/diary.dart';
import 'package:memory_lifes/presentation/screen/menu/image_library.dart';
import 'package:memory_lifes/presentation/screen/menu/map.dart';

import '../drawer/app_drawer.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPage = 0;
  final _pageOptions = [
    Diary(),
    Calendar(),
    ImageLibrary(),
    MapImage(),
    Account()
  ];
  bool appbar = true;
  bool FAB = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar
          ? AppBar(
        backgroundColor: Colors.blue,
              actions: <IconButton>[
                new IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),

              ],
            )
          : null,
      body: _pageOptions[selectedPage],
      drawer: AppDrawer(),
      floatingActionButton: FAB
          ? FloatingActionButton(
              onPressed: () {
                if (selectedPage == 0) {
                  AppNavigator.navigateCreateDiary();
                } else if (selectedPage == 1) {
                  AppNavigator.navigateCreateNote();
                }
              },
              tooltip: 'Thêm nhật kí',
              child: Icon(Icons.add),
            )
          : null,
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: Colors.blue,
        style: TabStyle.react,
        curveSize: 0,
        height: 55,
        items: [
          TabItem(
              icon: Image.asset(
                "assets/images/note.png",
                color: selectedPage == 0 ? Colors.blue : Colors.grey,
              ),
              title: 'Nhật kí'),
          TabItem(
              icon: Image.asset(
                "assets/images/calendar.png",
                color: selectedPage == 1 ? Colors.blue : Colors.grey,
              ),
              title: 'Lịch'),
          TabItem(
              icon: Image.asset(
                "assets/images/card_image.png",
                color: selectedPage == 2 ? Colors.blue : Colors.grey,
              ),
              title: 'Kho ảnh'),
          TabItem(
              icon: Image.asset(
                "assets/images/map.png",
                color: selectedPage == 3 ? Colors.blue : Colors.grey,
              ),
              title: 'Bản đồ'),
          TabItem(
              icon: Image.asset(
                "assets/images/user.png",
                color: selectedPage == 4 ? Colors.blue : Colors.grey,
              ),
              title: 'Tài khoản'),
        ],
        initialActiveIndex: 0, //optional, default as 0
        onTap: (int i) {
          setState(() {
            selectedPage = i;
            if (i == 4)
              appbar = false;
            else
              appbar = true;

            if (i == 0 || i == 1)
              FAB = true;
            else
              FAB = false;
          });
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
