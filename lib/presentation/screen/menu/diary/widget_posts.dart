import 'package:flutter/material.dart';
import 'package:memory_lifes/model/entity/new.dart';
import 'package:memory_lifes/presentation/screen/menu/diary/widget_post_item.dart';

class WidgetPostListItem extends StatefulWidget {
  final List<News> post;

  const WidgetPostListItem({Key key, @required this.post})
      : assert(post != null),
        super(key: key);

  @override
  _WidgetPostListItemState createState() => _WidgetPostListItemState();
}

class _WidgetPostListItemState extends State<WidgetPostListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(widget.post[index].id.toString()),
            background: slideLeftBackground(),
            child: WidgetPostItem(post: widget.post[index]),

            // ignore: missing_return
            confirmDismiss: (direction) async {
              if (direction == DismissDirection.endToStart) {
                final bool res = await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text('Bạn có muốn xóa bài bài viết không?'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text(
                              'Không',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            child: Text(
                              'Đồng ý',
                              style: TextStyle(
                                color: Color(0xff0066b3),
                              ),
                            ),
                            onPressed: () {
                              // TODO: Delete the item from DB etc..
                              setState(() {
                                // BlocProvider.of<NotificationOrderBloc>(context)
                                //     .add(RemoveNotificationOrder(
                                //         widget.notifications[index].id));
                                // BlocProvider.of<NotificationOrderBloc>(context)
                                //     .add(LoadNotificationOrder(20, 0));
                              });
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    });
                return res;
              } else {
                // TODO: Navigate to edit page;
              }
            },
          );
        },
        itemCount: widget.post.length,
        physics: BouncingScrollPhysics(),
      ),
    );
  }

  Widget slideLeftBackground() {
    return Container(
      color: Color(0xff0066b3),
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              'Xóa',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        alignment: Alignment.centerRight,
      ),
    );
  }
}
