import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memory_lifes/app/constants/navigator/navigator.dart';


class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key key}) : super(key: key);
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}
class _ForgotPasswordState extends State<ForgotPassword> {

  final emailController = TextEditingController();

  String email;

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
              top: MediaQuery.of(context).size.height /3,
              left: 20,
              right: 20,
              child: Column(
                children: <Widget>[
                Text("Nhập email tài khoản", style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w700),),
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

                  MaterialButton(
                    minWidth: 100.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      //print('$username' + "   " + '$password');
                      AppNavigator.navigateOtp();
                    },
                    child: Text('Tìm tài khoản', style: TextStyle(fontSize: 15, ),),
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }

  void updateEmail(){
    email = emailController.text;
  }

}