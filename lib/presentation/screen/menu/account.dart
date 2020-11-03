import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memory_lifes/presentation/router.dart';
import 'package:memory_lifes/presentation/screen/drawer/app_drawer.dart';
import 'package:memory_lifes/presentation/screen/view_image.dart';

class Account extends StatefulWidget {
  @override
  AccountState createState() => AccountState();
}

class AccountState extends State<Account> {

  String cover_image = "assets/images/cover_image.png";
  String avatar_image = "assets/images/image1.png";
  String nickname = "Loading";
  String intro = "Loading";


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      overflow: Overflow.visible,
                      children: [
                        Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) => ViewImage(image: cover_image,)));
                              },
                              child: Image.asset(cover_image, height: 200, fit: BoxFit.fitWidth,),
                            )
                        ),

                        // Positioned(
                        //     bottom: 10,
                        //     right: 10,
                        //     child: GestureDetector(
                        //       child: Image.asset("assets/images/pencil-square.png", height: 15,color: Colors.black,),
                        //     )
                        // ),

                        Positioned(
                            top: 150,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) => ViewImage(image: avatar_image,)));
                              },
                              child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: ExactAssetImage(avatar_image)
                                      )
                                  )

                              ),
                            )
                        ),

                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Text(nickname, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text(intro, style: TextStyle(fontSize: 16),),
                      SizedBox(height: 15,),
                      _createDrawerItem(icon: AssetImage("assets/images/user.png"), text: 'Hồ sơ cá nhân',
                          onTap: () => Navigator.pushNamed(context, BaseRouter.PROFILE_USER)),
                      _createDrawerItem(icon: AssetImage("assets/images/change_pin.png"), text: 'Thay đổi mã PIN',
                          onTap: () => Navigator.pushNamed(context, BaseRouter.CHANGE_PIN)),
                      //_createDrawerItem(icon: AssetImage("assets/images/theme.png"), text: 'Thay đổi chủ đề',),
                      //_createDrawerItem(icon: AssetImage("assets/images/help.png"), text: 'Hỗ trợ',),
                     // _createDrawerItem(icon: AssetImage("assets/images/policy.png"), text: 'Chính sách',),
                      //_createDrawerItem(icon: AssetImage("assets/images/translate.png"), text: 'Ngôn ngữ',),

                      MaterialButton(
                        minWidth: 80.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        textColor: Colors.white,
                        color: Colors.red,
                        onPressed: () {
                          //AppNavigator.navigateNavigation();
                        },
                        child: Text('Đăng xuất', style: TextStyle(fontSize: 16, ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

  Widget _createDrawerItem(
      {AssetImage icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          ImageIcon(icon, color: Colors.blue,),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(text, style: TextStyle(fontSize: 16,color: Colors.black),),
          )
        ],
      ),
      onTap: onTap,
      dense: true,
    );
  }
}