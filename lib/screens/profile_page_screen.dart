import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_blog/constants/constans.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // final _textController = TextEditingController();

  // @override
  // void dispose() {
  //   _textController.dispose();
  //   super.dispose();
  // }

//listviewle olmayınca childrenla yazıldı
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.only(
                bottom: (MediaQuery.of(context).viewInsets.bottom) *
                    0.1), // işe yaramadı

            child: ListView(
              padding: const EdgeInsets.all(25.0),
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 80, right: 80, left: 80),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/person-images/asli_vesikalik.PNG"),
                    radius: 70,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      prefixIconColor: Color.fromARGB(255, 210, 206, 206),
                      // icon: Icon(Icons.email,
                      //     color: Color.fromARGB(255, 210, 206, 206)),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: Constants.emailText,
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      prefixIconColor: Color.fromARGB(255, 210, 206, 206),
                      // icon: Icon(Icons.email,
                      //     color: Color.fromARGB(255, 210, 206, 206)),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: Constants.phoneNumText,
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.verified_user_rounded),
                      prefixIconColor: Color.fromARGB(255, 210, 206, 206),
                      // icon: Icon(Icons.email,
                      //     color: Color.fromARGB(255, 210, 206, 206)),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: Constants.verificationCodeText,
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key),
                      prefixIconColor: Color.fromARGB(255, 210, 206, 206),
                      // icon: Icon(Icons.email,
                      //     color: Color.fromARGB(255, 210, 206, 206)),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: Constants.passText,
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 35),
                      width: size.width * 0.7,
                      height: size.height * 0.07,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: ElevatedButton(
                            onPressed: (() {
                              return;
                            }),
                            style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromARGB(255, 96, 222, 100)),
                            child: Text(
                              Constants.saveChangesText,
                              style: const TextStyle(fontSize: 18),
                            )),
                      )),
                )
              ],
            )
            // Container(
            //   padding: const EdgeInsets.only(
            //       bottom: 50.0, top: 50.0, left: 30.0, right: 30.0),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       const CircleAvatar(
            //         backgroundImage:
            //             AssetImage("assets/person-images/asli_vesikalik.PNG"),
            //         radius: 80,
            //       ),
            //       const SizedBox(
            //         height: 50,
            //       ),
            //       Column(
            //         mainAxisAlignment:
            //             MainAxisAlignment.spaceEvenly, //neden değişmediğini sor
            //         mainAxisSize: MainAxisSize.max,
            //         children: [
            //           const SizedBox(
            //             height: 15,
            //           ), // altçizgi renk tonunun düzelmesi için
            //           TextFormField(
            //             decoration: const InputDecoration(
            //               prefixIcon: Icon(Icons.email),
            //               prefixIconColor: Color.fromARGB(255, 210, 206, 206),
            //               // icon: Icon(Icons.email,
            //               //     color: Color.fromARGB(255, 210, 206, 206)),
            //               enabledBorder: UnderlineInputBorder(
            //                   borderSide: BorderSide(color: Colors.grey)),
            //               hintText: "Email",
            //               hintStyle: TextStyle(color: Colors.white, fontSize: 17),
            //             ),
            //           ),
            //           const SizedBox(
            //             height: 15,
            //           ),
            //           TextFormField(
            //             decoration: const InputDecoration(
            //               prefixIcon: Icon(Icons.phone),
            //               prefixIconColor: Color.fromARGB(255, 210, 206, 206),
            //               // icon: Icon(Icons.email,
            //               //     color: Color.fromARGB(255, 210, 206, 206)),
            //               enabledBorder: UnderlineInputBorder(
            //                   borderSide: BorderSide(color: Colors.grey)),
            //               hintText: "Email",
            //               hintStyle: TextStyle(color: Colors.white, fontSize: 17),
            //             ),
            //           ),
            //           const SizedBox(
            //             height: 15,
            //           ),
            //           TextFormField(
            //             decoration: const InputDecoration(
            //               prefixIcon: Icon(Icons.verified_user_rounded),
            //               prefixIconColor: Color.fromARGB(255, 210, 206, 206),
            //               // icon: Icon(Icons.email,
            //               //     color: Color.fromARGB(255, 210, 206, 206)),
            //               enabledBorder: UnderlineInputBorder(
            //                   borderSide: BorderSide(color: Colors.grey)),
            //               hintText: "Email",
            //               hintStyle: TextStyle(color: Colors.white, fontSize: 17),
            //             ),
            //           ),
            //           const SizedBox(
            //             height: 15,
            //           ),
            //           TextFormField(
            //             decoration: const InputDecoration(
            //               prefixIcon: Icon(Icons.key),
            //               prefixIconColor: Color.fromARGB(255, 210, 206, 206),
            //               // icon: Icon(Icons.email,
            //               //     color: Color.fromARGB(255, 210, 206, 206)),
            //               enabledBorder: UnderlineInputBorder(
            //                   borderSide: BorderSide(color: Colors.grey)),
            //               hintText: "Email",
            //               hintStyle: TextStyle(color: Colors.white, fontSize: 17),
            //             ),
            //           ),
            //           const SizedBox(height: 30,),
            //           Container(
            //               margin: const EdgeInsets.symmetric(vertical: 35),
            //               width: size.width * 0.7,
            //               height: size.height * 0.07,
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(30),
            //                 child: ElevatedButton(
            //                     onPressed: (() {
            //                       return;
            //                     }),
            //                     style: ElevatedButton.styleFrom(
            //                         primary:
            //                             const Color.fromARGB(255, 96, 222, 100)),
            //                     child: const Text(
            //                       "Save Changes ",
            //                       style: TextStyle(fontSize: 18),
            //                     )),
            //               )),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),

            ),
      ),
    );
  }
}
