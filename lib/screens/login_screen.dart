import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:my_blog/constants/text_constants.dart';
import 'package:my_blog/modal_bottom_sheet/sign_in_bottom_sheet.dart';

bool isloadling = false;
bool closelogin = false;
// ignore: unused_element
Timer _timer = Timer(const Duration(milliseconds: 400), () {});

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<LoginScreen> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: WillPopScope(
        // ignore: sort_child_properties_last
        child: SafeArea(
            top: true,
            child: Container(
              height: size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/arka_plan.jpg"),
                      fit: BoxFit.fill)),
              child: SingleChildScrollView(
                  child: Padding(
                padding:
                    const EdgeInsets.only(left: 40, right: 55), //değerleri elle
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: size.height * 0.7),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: const BoxDecoration(
                                  // borderRadius: const BorderRadius.all(
                                  //     Radius.circular(20)),
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color.fromARGB(255, 63, 62, 62),
                                      Color.fromARGB(255, 58, 57, 57),
                                      Color.fromARGB(255, 36, 36, 36),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              width: 300,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  //foregroundColor: Colors.white,
                                  padding: const EdgeInsets.all(16.0),
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                onPressed: () {
                                  SignInBottomSheet()
                                      .showBottomSheetSignIn(context);
                                },
                                child: Text(Constants.signText,
                                    style:
                                        const TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: const BoxDecoration(
                                  // borderRadius: const BorderRadius.all(
                                  //     Radius.circular(20)),
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF42A5F5),
                                      Color(0xFF1976D2),
                                      Color(0xFF0D47A1),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              width: 300,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  //foregroundColor: Colors.white,
                                  padding: const EdgeInsets.all(16.0),
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    backgroundColor:
                                        const Color.fromARGB(255, 69, 69, 69),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                    builder: (context) {
                                      return SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              const Text("Deneme"),
                                              ElevatedButton(
                                                child: const Text("close"),
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Text(Constants.signInFacebookText,
                                    style:
                                        const TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              )),
            )),
        onWillPop: () {
          if (closelogin) {
            exit(0);
          }
          closelogin = true;
          _timer = Timer(const Duration(seconds: 5), () {
            closelogin = false;
          });

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.grey.withOpacity(0.7),
              content: SizedBox(
                height: size.height * 0.02,
                child: Center(
                  child: Text(Constants.pressToExitText),
                ),
              )));
          return Future.value(false);
        },
      ),
    );
  }
}
