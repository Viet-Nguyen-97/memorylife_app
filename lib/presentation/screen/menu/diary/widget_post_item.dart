import 'package:flutter/material.dart';
import 'package:memory_lifes/model/entity/new.dart';

class WidgetPostItem extends StatelessWidget {
  final News post;
  final Color backgroundColor;
  final Function onDelete;

  const WidgetPostItem(
      {Key key, this.post, this.backgroundColor, @required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset('assets/image/cricle.png'),
            SizedBox(
              width: 10,
            ),
            Text(
              post.date,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Flexible(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  post.title,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.network(
                post.image,
                height: 130,
                width: 150,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
