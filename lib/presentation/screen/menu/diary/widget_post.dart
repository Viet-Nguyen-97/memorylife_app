import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_lifes/presentation/common_widgets/widget_circle_progress.dart';
import 'package:memory_lifes/presentation/common_widgets/widget_spacer.dart';
import 'package:memory_lifes/presentation/screen/menu/diary/bloc/post_bloc.dart';
import 'package:memory_lifes/presentation/screen/menu/diary/bloc/post_state.dart';
import 'package:memory_lifes/presentation/screen/menu/diary/widget_posts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class WidgetPostList extends StatefulWidget {
  @override
  _WidgetPostListState createState() => _WidgetPostListState();
}

class _WidgetPostListState extends State<WidgetPostList> {
  PanelController _panelController = new PanelController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PostBloc, PostState>(
      listener: (context, state) async {
        if (state is PostLoaded) {}
        if (state is PostNotLoaded) {
          //   await HttpHandler.resolve(status: state.error);
        }
      },
      child: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: Column(
                children: [_buildContent(state)],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildContent(PostState state) {
    if (state is PostLoaded) {
      return SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              state.post.isNotEmpty
                  ? WidgetPostListItem(post: state.post)
                  : WidgetSpacer(),
              WidgetSpacer(
                height: 200,
              ),
            ],
          ),
        ),
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
