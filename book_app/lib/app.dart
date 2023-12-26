import 'package:book_app/service/status_service.dart';
import 'package:flutter/material.dart';
import 'view/home_view.dart';
import 'view/login_view.dart';
import 'vmodel/login_vmodel.dart';
import 'model/user_model.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget routeHomeWidget() {
    if (StatusService.shared.getUserInfo == null) {
      return LoginPageWidget(viewModel: LoginVModel());
    }
    return const HomePageWidget();
  }

  @override
  Widget build(BuildContext context) {
    StatusService.shared.setStateApp = setState;

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
