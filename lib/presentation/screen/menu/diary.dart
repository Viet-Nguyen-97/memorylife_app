import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_lifes/app/constants/navigator/navigator.dart';
import 'package:memory_lifes/presentation/common_widgets/widget_circle_progress.dart';
import 'package:memory_lifes/presentation/common_widgets/widget_spacer.dart';
import 'package:memory_lifes/presentation/screen/menu/diary/bloc/bloc.dart';
import 'package:memory_lifes/presentation/screen/menu/diary/widget_posts.dart';

class Diary extends StatefulWidget {
  @override
  DiaryState createState() => DiaryState();
}

class DiaryState extends State<Diary> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PostBloc>(context).add(LoadPost());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PostBloc, PostState>(
      listener: (context, state) async {
        if (state is PostLoaded) {}
        if (state is PostNotLoaded) {
          //   await HttpHandler.resolve(status: state.status);
        }
      },
      child: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: <Widget>[
                Container(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background_home.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          top: 100.0,
                          left: 20.0,
                          child: Container(
                            height: 44,
                            width: 44,
                            child: CircleAvatar(
                              child: Image.asset("assets/images/avatar.png"),
                            ),
                          )),
                      Positioned(
                        top: 100.0,
                        left: 80.0,
                        right: 30.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          textColor: Colors.black,
                          color: Colors.white,
                          onPressed: () {
                            AppNavigator.navigateCreateDiary();
                          },
                          child: Text(
                            'Hi! Bạn đang nghĩ gì?',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: _buildContent(state),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildContent(PostState state) {
    if (state is PostLoaded) {
      return Container(
        child: state.post.isNotEmpty
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: WidgetPostListItem(
                  post: state.post,
                ),
              )
            : WidgetSpacer(),
      );
    } else if (state is PostLoading) {
      return Center(
        child: WidgetCircleProgress(),
      );
    } else if (state is PostNotLoaded) {
      return Center(
        child: Text('${state.error}'),
      );
    } else {
      return Center(
        child: Text('Unknown state'),
      );
    }
  }
}
