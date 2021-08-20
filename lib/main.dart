import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:superstarteam/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:superstarteam/data_source/local/local_storage.dart';
import 'package:superstarteam/screens/registration_screen.dart';
import 'package:superstarteam/utils/icons.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'ru';
  await LocalStorageApi().init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationBloc>(
          create: (context) => NavigationBloc(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 667),
        builder: () {
          return MaterialApp(
            initialRoute: '/',
            builder: BotToastInit(),
            navigatorObservers: [BotToastNavigatorObserver()],
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: const Locale('ru', 'RU'),
            supportedLocales: const [
              Locale('ru', 'RU'),
            ],
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.transparent,
            ),
            home: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Navigator(
                onGenerateRoute: (_) => MaterialPageRoute(
                  builder: (_) => _Loading(),
                ),
              ),
            ),
          );
        },
        // ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<UserBloc, UserState>(
    //   listener: (_, state) {
    //     if (state is DataUserState) {
    //       context.read<TableScreenBloc>().init();
    //     }
    //   },
    //   builder: (_, state) {
    //     if (state is EmptyUserState) {
    //       return FirstSignScreen();
    //     }
    //     if (state is LoadingUserState) {
    //       return Center(child: LoadingWidgets.loading());
    //     }
    return const RegistrationScreen();
    //   },
    // );
  }
}
