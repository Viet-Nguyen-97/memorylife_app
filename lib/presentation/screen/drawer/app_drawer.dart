import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:memory_lifes/presentation/router.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _createHeader(),
            Divider(
              color: Colors.white,
              thickness: 1.0,
            ), //0569 486 879
            _createDrawerItem(
                icon: AssetImage("assets/images/note.png"),
                text: 'Đăng bài',
                onTap: () =>
                    Navigator.pushNamed(context, BaseRouter.CREATE_DIARY)),
            _createDrawerItem(
              icon: AssetImage("assets/images/notepad.png"),
              text: 'Tạo ghi chú',
            ),
            _createDrawerItem(
                icon: AssetImage("assets/images/calendar.png"),
                text: 'Lịch',
                onTap: () => Navigator.pushNamed(context, BaseRouter.CALENDAR)),
            _createDrawerItem(
              icon: AssetImage("assets/images/card_image.png"),
              text: 'Kho ảnh cá nhân',
            ),
            _createDrawerItem(
              icon: AssetImage("assets/images/map.png"),
              text: 'Bản đồ',
            ),
          ],
        ),
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(color: Color(0xFF0099FF)),
        child: Stack(children: <Widget>[
          Positioned(
            top: 25.0,
            left: 20.0,
            child: Text(
              'Memory Life',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white),
            ),
          ),
          Positioned(
              top: 80.0,
              left: 20.0,
              child: Container(
                height: 44,
                width: 44,
                child: CircleAvatar(
                  child: Image.asset("assets/images/avatar.png"),
                ),
              )),
          Positioned(
            top: 90.0,
            left: 75.0,
            child: Text(
              'Nguyễn Linh An',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ]));
  }

  Widget _createDrawerItem(
      {AssetImage icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          ImageIcon(
            icon,
            color: Colors.blue,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      onTap: onTap,
      dense: true,
    );
  }
}
