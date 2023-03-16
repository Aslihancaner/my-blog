import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_blog/screens/login_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
 //     navigatorKey: NavigationService.instance.navigationKey,
      debugShowCheckedModeBanner: false,
    //  supportedLocales: const <Locale>[Locale("tr", "TR"), Locale("en", "US")],
      home: LoginScreen(),
      // routes: {
      //   '/login': (context) =>  const LoginScreen(),
      // },
    );
  }
}
