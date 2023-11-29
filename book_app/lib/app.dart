import 'package:book_app/app/user.dart';
import 'package:book_app/page/home.dart';
import 'package:book_app/page/login.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  UserInfo? userInfo;

  void setUserInfo(UserInfo value) {
    setState(() {
      userInfo = value;
    });
  }

  Widget routeHomeWidget() {
    if (userInfo == null) {
      return LoginPageWidget(setUserInfo: setUserInfo);
    }
    return HomePageWidget();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.w500),
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: routeHomeWidget(),
    );
  }
}
