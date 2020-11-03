import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:memory_lifes/app/constants/navigator/navigator.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {

  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  String username;
  String password;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldkey,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 3,
              left: 20,
              right: 20,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20, top: 10, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        prefixIcon: new Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        prefixText: ' ',
                        labelText: "Tài khoản",
                        alignLabelWithHint: true,
                      ),
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                      controller: usernameController,
                      onChanged:(value) => updateUsername(),
                    ),
                  ),
                  Container(

                    padding: EdgeInsets.only(left: 20,right: 20, top: 10, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        prefixIcon: new Icon(
                          Icons.lock_outline,
                          color: Colors.blue,
                        ),
                        prefixText: ' ',
                        labelText: "Mật khẩu",
                        alignLabelWithHint: true,
                      ),
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                      controller: passwordController,
                      onChanged:(value) => updatePassword(),
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 20, bottom: 10),
                      child: GestureDetector(
                        onTap: (){
                          AppNavigator.navigateForgotPassword();
                        },
                        child: Text("Quên mật khẩu ?", textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.deepOrange, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
                      )
                  ),
                  SizedBox(height: 10,),
                  MaterialButton(
                    minWidth: 70.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      AppNavigator.navigateBegin();
                    },
                    child: Text('Đăng nhập', style: TextStyle(fontSize: 15, ),),
                  ),


                ],
              )
          ),
          Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Bạn chưa có tài khoản?  ',
                      style: TextStyle(
                          color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(text: 'Đăng kí',
                            style: TextStyle(
                                color: Colors.blueAccent, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                AppNavigator.navigateSignUp();
                              }
                        )
                      ]
                  ),
                ),
              )
          )
        ],
      ),
    );
  }

  void updateUsername(){
    username = usernameController.text;
  }
  void updatePassword(){
    password = passwordController.text;
  }

}