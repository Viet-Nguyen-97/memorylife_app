import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memory_lifes/app/constants/navigator/navigator.dart';


class ChangePassword extends StatefulWidget {
  ChangePassword({Key key}) : super(key: key);
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}
class _ChangePasswordState extends State<ChangePassword> {

  final oldPassController = TextEditingController();
  final newPassController = TextEditingController();
  final rePassController = TextEditingController();

  String newpass;
  String repass;
  String oldpass;

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
                  Text("Thay đổi mật khẩu", style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w700),),
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
                        labelText: "Mật khẩu cũ *",
                        alignLabelWithHint: true,
                      ),
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                      controller: oldPassController,
                      onChanged:(value) => updatePass(),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20, top: 20, bottom: 10),
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
                        labelText: "Mật khẩu mới *",
                        alignLabelWithHint: true,
                      ),
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                      controller: newPassController,
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
                      controller: rePassController,
                      onChanged:(value) => updateRepass(),
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
                    child: Text('Xong', style: TextStyle(fontSize: 15, ),),
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }


  void oldPass(){
    oldpass = oldPassController.text;
  }
  void updatePass(){
    newpass = newPassController.text;
  }
  void updateRepass(){
    repass = rePassController.text;
  }

}