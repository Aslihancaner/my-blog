import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_blog/screens/login_screen.dart';

class SignUpBottomSheet {
  void showBottomSheetSignUp(BuildContext context) {
    final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
    Size size = MediaQuery.of(context).size;
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController phoneNumber = TextEditingController();
    TextEditingController userName = TextEditingController();
    showModalBottomSheet(
      useRootNavigator: true,
      isDismissible: false,
        context: context,
        backgroundColor: const Color.fromARGB(255, 69, 69, 69),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return Padding(
             padding: EdgeInsets.only(
                bottom: (MediaQuery.of(context).viewInsets.bottom) * 0.7),
            child: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(
                     top: size.width * 0.02,
                     bottom: size.width * 0.04,
                      right: size.width * 0.07,
                      left: size.width * 0.05),
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Center(
                      child: Form(
                    key: _formKey2,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          TextFormField(
                            controller: email,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            textAlignVertical: TextAlignVertical.top,
                            validator: (value) {
                              if (!EmailValidator.validate(value!)) {
                                return "Lütfen geçerli bir email giriniz!";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.email,
                                  color: Color.fromARGB(255, 210, 206, 206)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: "Email",
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                         
                          TextFormField(
                            controller: phoneNumber,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            textAlignVertical: TextAlignVertical.top,
                            validator: (value) {
                              if (phoneNumber.text.isEmpty) {
                                return "Lütfen geçerli bir telefon numarası giriniz";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.phone,
                                color: Color.fromARGB(255, 210, 206, 206),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: "Phone number",
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                         
                          TextFormField(
                            controller: userName,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            textAlignVertical: TextAlignVertical.top,
                            validator: (value) {
                              if (userName.text.isEmpty) {
                                return "Lütfen geçerli bir kullanıcı adı giriniz";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.perm_identity,
                                color: Color.fromARGB(255, 210, 206, 206),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: "User name",
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                         
                          TextFormField(
                            controller: password,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            textAlignVertical: TextAlignVertical.top,
                            validator: (value) {
                              if (password.text.isEmpty) {
                                return "Lütfen geçerli bir şifre giriniz";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.key,
                                color: Color.fromARGB(255, 210, 206, 206),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: "Password",
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(
                                  top: 25, right: 30, left: 30, bottom: 5),
                              width: size.width * 0.8,
                              height: size.height * 0.07,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: ElevatedButton(
                                    onPressed: (() {
                                      if (_formKey2.currentState!.validate()) {
                                        Get.back();
                                      }
                                      return;
                                    }),
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color.fromARGB(
                                            255, 96, 222, 100)),
                                    child: const Text(
                                      "Sign up",
                                      style: TextStyle(fontSize: 18),
                                    )),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Already have an account?",
                                style: TextStyle(color: Colors.white),
                              ),
                              TextButton(
                                  onPressed: (() {
                                   Get.back();
                                  }),
                                  child: const Text(
                                    "Sign in",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 96, 222, 100)),
                                  ))
                            ],
                          )
                        ]),
                  ))),
            ),
          );
        });
  }
}
