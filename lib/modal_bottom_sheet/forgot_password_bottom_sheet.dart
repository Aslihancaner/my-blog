import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_blog/modal_bottom_sheet/sign_in_bottom_sheet.dart';
import 'package:my_blog/screens/login_screen.dart';

class ForgotPasswordBottomSheet {
  void showBottomSheetForgotPassword(BuildContext context) {
    final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
    Size size = MediaQuery.of(context).size;
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController rePassword = TextEditingController();
    showModalBottomSheet(
        context: context,
        backgroundColor: const Color.fromARGB(255, 69, 69, 69),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: (MediaQuery.of(context).viewInsets.bottom) * 0.4),
            child: Container(
                padding: EdgeInsets.only(
                    top: size.width * 0.03,
                    bottom: size.width * 0.03,
                    right: size.width * 0.07,
                    left: size.width * 0.05),
                height: MediaQuery.of(context).size.height * 0.5,
                child: Center(
                    child: Form(
                  key: _formKey1,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          controller: email,
                          style: const TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          textAlignVertical: TextAlignVertical.top,
                          validator: (value) {
                            if (!EmailValidator.validate(value!)) {
                              return "Geçerli bir email giriniz!";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person,
                                color: Color.fromARGB(255, 210, 206, 206)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: "Email",
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        TextFormField(
                          controller: password,
                          style: const TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          textAlignVertical: TextAlignVertical.top,
                          validator: (value) {
                            if (password.text.isEmpty) {
                              return "Lütfen geçerli bir şifre giriniz!";
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        TextFormField(
                          controller: rePassword,
                          style: const TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          textAlignVertical: TextAlignVertical.top,
                          validator: (value) {
                            if (rePassword.text.isEmpty) {
                              return "Lütfen yeni şifrenizi tekrar girin!";
                            } else if (value != password.text) {
                              return "Yeni şifreniz hatalı!";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 210, 206, 206),
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: "Re-enter Password",
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 35),
                            width: size.width * 0.8,
                            height: size.height * 0.07,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: ElevatedButton(
                                  onPressed: (() {
                                    if (_formKey1.currentState!.validate()) {
                                      Get.to(LoginScreen());
                                    }
                                    //change işlemi
                                    return;
                                  }),
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color.fromARGB(
                                          255, 96, 222, 100)),
                                  child: const Text(
                                    "Change Password",
                                    style: TextStyle(fontSize: 18),
                                  )),
                            )),
                      ]),
                ))),
          );
        });
  }
}
