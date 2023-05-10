import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_blog/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

bool isDarkModeEnabled = false;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static void toggleThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkModeEnabled = prefs.getBool('isDarkModeEnabled') ?? false;
    Get.changeTheme(ThemeData(
      brightness: isDarkModeEnabled ? Brightness.dark : Brightness.light,
      // diğer tema ayarları
    ));
  }

  final darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color.fromARGB(255, 4, 42, 73),
      textTheme: ThemeData.dark().textTheme.copyWith(
            bodyText1: ThemeData.dark()
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.white),
            bodyText2: ThemeData.dark()
                .textTheme
                .bodyText2!
                .copyWith(color: Colors.white),
          ));

  final whiteTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Color.fromARGB(255, 129, 157, 180),
      primaryColor: Colors.white,
      appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 79, 100, 207),
          iconTheme: IconThemeData(color: Colors.black)),
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: ThemeData.light()
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.black),
            bodyText2: ThemeData.light()
                .textTheme
                .bodyText2!
                .copyWith(color: Colors.black),
          ));

  @override
  void initState() {
    toggleThemeMode();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //getx'i çağır. themeController.thema temayı çekmek için
    return GetMaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor: Color.fromARGB(255, 11, 31, 61),
      //   colorScheme: ColorScheme.dark().copyWith(
      //     primary: Colors.orange[400],
      //     secondary: Colors.tealAccent[700],
      //   ),
      // ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),

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
