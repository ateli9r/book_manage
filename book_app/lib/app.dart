// import 'package:book_app/model/user_domain.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'view/home.dart';
import 'view/login.dart';
import 'view_model/login_model.dart';
import 'model/user_domain.dart';

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
      return LoginPageWidget(
          setUserInfo: setUserInfo,
          viewModel: LoginModel(client: http.Client()));
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
