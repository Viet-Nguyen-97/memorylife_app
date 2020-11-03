import 'package:flutter/material.dart';
import 'package:memory_lifes/app/constants/barrel_constants.dart';

class WidgetCircleProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 40,
        padding: EdgeInsets.all(5),
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColor.PRIMARY_COLOR),
          backgroundColor: Colors.grey,
        ));
  }
}
