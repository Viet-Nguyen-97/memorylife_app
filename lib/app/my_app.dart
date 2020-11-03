import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:memory_lifes/app/simple_bloc_delegate.dart';
import 'package:memory_lifes/app_config.dart';
import 'package:memory_lifes/model/api/dio_provider.dart';
import 'package:memory_lifes/model/local/pref.dart';
import 'package:memory_lifes/model/repo/session_repository.dart';
import 'package:memory_lifes/model/repo/user_repository.dart';
import 'package:memory_lifes/presentation/router.dart';
import 'file:///C:/xampp/htdocs/memory/lib/presentation/screen/splash/splash.dart';
import 'package:memory_lifes/utils/locale/app_localization.dart';

import 'auth_bloc/bloc.dart';
import 'constants/barrel_constants.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  static void initSystemDefault() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: AppColor.STATUS_BAR,
      ),
    );
  }

  static Widget runWidget(String token) {
    BlocSupervisor.delegate = SimpleBlocDelegate();
    Dio dio = DioProvider.instance(token);

    final UserRepository userRepository = UserRepository(dio: dio);
    final SessionRepository sessionRepository =
        SessionRepository(pref: LocalPref());

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(
          create: (context) => userRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthenticationBloc(
                userRepository: userRepository,
                sessionRepository: sessionRepository)
              ..add(AppInitialized()),
          ),
          // BlocProvider(
          //   create: (context) => HomeBloc(
          //       homeRepository: homeRepository, userRepository: userRepository),
          // ),
        ],
        child: MyApp(),
      ),
    );
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    getKeyHash();
    final config = AppConfig.of(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: config.debugTag,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColor.PRIMARY_COLOR,
        accentColor: AppColor.PRIMARY_COLOR,
        hoverColor: AppColor.PRIMARY_COLOR,
        fontFamily: 'Montserrat',
      ),
      supportedLocales: AppLanguage.getSupportLanguage().map((e) => e.locale),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale == null) {
          debugPrint("*language locale is null!!!");
          return supportedLocales.first;
        }
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      locale: Locale('vi', 'VN'),
      routes: BaseRouter.routes(context),
      home: SplashScreen(),
    );
  }

  static const platform = const MethodChannel('flutter.key_hash');

  getKeyHash() async {
    String response = "";
    try {
      final String result = await platform.invokeMethod('getKeyHash');
      response = result;
    } on PlatformException catch (e) {
      response = "Failed to Invoke: '${e.message}'.";
    }
    print('---------------------------');
    print("Response: $response");
  }
}
