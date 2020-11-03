import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memory_lifes/app/constants/navigator/navigator.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();
  final emailController = TextEditingController();
  final phonenumController = TextEditingController();

  String username;
  String password;
  String repassword;
  String email;
  String phonenum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              top: MediaQuery.of(context).size.height /5,
              left: 20,
              right: 20,
              child: Column(
                children: <Widget>[
                  //Text("Đăng kí", style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w700),),
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20, top: 20, bottom: 10),
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
                        labelText: "Tài khoản *",
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
                        labelText: "Mật khẩu *",
                        alignLabelWithHint: true,
                      ),
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                      controller: passwordController,
                      onChanged:(value) => updatePass(),
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
                        labelText: "Nhập lại mật khẩu *",
                        alignLabelWithHint: true,
                      ),
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                      controller: repasswordController,
                      onChanged:(value) => updateRepass(),
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
                          Icons.alternate_email,
                          color: Colors.blue,
                        ),
                        prefixText: ' ',
                        labelText: "Email *",
                        alignLabelWithHint: true,
                      ),
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                      controller: emailController,
                      onChanged:(value) => updateEmail(),
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
                          Icons.phone_android,
                          color: Colors.blue,
                        ),
                        prefixText: ' ',
                        labelText: "Số điện thoại *",
                        alignLabelWithHint: true,
                      ),
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                      controller: phonenumController,
                      onChanged:(value) => updatePhonenum(),
                    ),
                  ),

                  MaterialButton(
                    minWidth: 100.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      //print('$username' + "   " + '$password');
                      AppNavigator.navigateLogin();
                    },
                    child: Text('Đăng kí', style: TextStyle(fontSize: 15, ),),
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }

  void updateUsername(){
    username = usernameController.text;
  }
  void updatePass(){
    password = passwordController.text;
  }
  void updateRepass(){
    repassword = repasswordController.text;
  }
  void updateEmail(){
    email = emailController.text;
  }
  void updatePhonenum(){
    phonenum = phonenumController.text;
  }
}