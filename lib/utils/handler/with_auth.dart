import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:memory_lifes/app/auth_bloc/bloc.dart';

class WithAuth {
  static bool isAuth({Function ifAuth, Function ifNotAuth}) {
    if (BlocProvider.of<AuthenticationBloc>(Get.context).state
        is Authenticated) {
      ifAuth();
      return true;
    } else {
      ifNotAuth();
      return false;
    }
  }
}
