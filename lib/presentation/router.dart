import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_lifes/model/repo/user_repository.dart';
import 'package:memory_lifes/presentation/screen/change_password/change_password.dart';
import 'package:memory_lifes/presentation/screen/diary/create_diary.dart';
import 'package:memory_lifes/presentation/screen/forgot_password/forgot_password.dart';
import 'file:///C:/xampp/htdocs/memory/lib/presentation/screen/home_page/home_page.dart';
import 'file:///C:/xampp/htdocs/memory/lib/presentation/screen/login/login.dart';
import 'package:memory_lifes/presentation/screen/menu/calendar.dart';
import 'package:memory_lifes/presentation/screen/menu/diary/bloc/post_bloc.dart';
import 'package:memory_lifes/presentation/screen/menu/image_library.dart';
import 'package:memory_lifes/presentation/screen/menu/map.dart';
import 'package:memory_lifes/presentation/screen/new_password/new_password.dart';
import 'package:memory_lifes/presentation/screen/note/create_note.dart';
import 'package:memory_lifes/presentation/screen/otp/otp.dart';
import 'package:memory_lifes/presentation/screen/pincode/change_pin.dart';
import 'package:memory_lifes/presentation/screen/pincode/new_pin.dart';
import 'package:memory_lifes/presentation/screen/sign_up/sign_up.dart';
import 'file:///C:/xampp/htdocs/memory/lib/presentation/screen/profile_user/profile_user.dart';
import 'file:///C:/xampp/htdocs/memory/lib/presentation/screen/splash/splash.dart';
import 'package:memory_lifes/presentation/screen/splash/sc_begin.dart';
import 'package:memory_lifes/presentation/screen/splash/sc_three_screen.dart';
import 'package:memory_lifes/presentation/screen/splash/sc_two_screen.dart';

class BaseRouter {
  static const String SPLASH = '/splash';
  static const String LOGIN = '/login';
  static const String SPLASH_ONE = '/splash_one';
  static const String SPLASH_TWO = '/splash_two';
  static const String SPLASH_THREE = '/splash_three';
  static const String OTP = '/otp';
  static const String NAVIGATION = '/navigation';
  static const String CREATE_DIARY = '/create_diary';
  static const String CREATE_NOTE = '/create_note';
  static const String CHANGE_PIN = '/change_pin';
  static const String CALENDAR = '/calendar';
  static const String PROFILE_USER = '/profile_user';
  static const String IMAGE_LIBRARY = '/library_image';
  static const String MAP = '/map';
  static const String NEW_PASS = '/new_pass';
  static const String CHANGE_PASS = '/change_pass';
  static const String FORGOT_PASS = '/forgot_pass';
  static const String SIGN_UP = '/sign_up';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case SPLASH_ONE:
        return MaterialPageRoute(builder: (_) => BeginScreen());
      case SPLASH_TWO:
        return MaterialPageRoute(builder: (_) => TwoScreen());
      case SPLASH_THREE:
        return MaterialPageRoute(builder: (_) => ThreeScreen());
      case NAVIGATION:
        return MaterialPageRoute(builder: (_) => MyHomePage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }

  static Map<String, WidgetBuilder> routes(BuildContext context) {
    var userRepository = RepositoryProvider.of<UserRepository>(context);
    return {
      SPLASH: (context) => SplashScreen(),
      SPLASH_ONE: (context) => BeginScreen(),
      SPLASH_TWO: (context) => TwoScreen(),
      SPLASH_THREE: (context) => ThreeScreen(),
      LOGIN: (context) => Login(),
      OTP: (context) => OTPcode(),
      //    NAVIGATION: (context) => MyHomePage(),
      CREATE_DIARY: (context) => CreateNewDiary(),
      CREATE_NOTE: (context) => CreateNewNote(),
      CHANGE_PIN: (context) => ChangePin(),
      CALENDAR: (context) => Calendar(),
      PROFILE_USER: (context) => ProfileUser(),
      IMAGE_LIBRARY: (context) => ImageLibrary(),
      MAP: (context) => MapImage(),
      NEW_PASS: (context) => NewPassword(),
      CHANGE_PASS: (context) => ChangePassword(),
      FORGOT_PASS: (context) => ForgotPassword(),
      SIGN_UP: (context) => SignUp(),
      NAVIGATION: (context) => MultiBlocProvider(providers: [
            BlocProvider(
              create: (context) => PostBloc(userRepository: userRepository),
            ),
          ], child: MyHomePage()),
    };
  }
}
