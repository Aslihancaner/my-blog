import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:my_blog/constants/constans.dart';

import 'package:my_blog/modal_bottom_sheet/forgot_password_bottom_sheet.dart';
import 'package:my_blog/modal_bottom_sheet/sign_up_bottom_sheet.dart';

import '../screens/home_page._screen.dart';

class SignInBottomSheet {
  void showBottomSheetSignIn(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    Size size = MediaQuery.of(context).size;
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: const Color.fromARGB(255, 69, 69, 69),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: (MediaQuery.of(context).viewInsets.bottom) * 0.5),
            child: Container(
              padding: EdgeInsets.only(
                  top: size.width * 0.03,
                  bottom: size.width * 0.03,
                  right: size.width * 0.07,
                  left: size.width * 0.05),
              height: MediaQuery.of(context).size.height * 0.45,
              child: Center(
                child: Form(
                  key: _formKey,
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
                            return Constants.emailWarningText;
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          icon: const Icon(Icons.person,
                              color: Color.fromARGB(255, 210, 206, 206)),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: Constants.emailText,
                          hintStyle: const TextStyle(
                              color: Colors.white, fontSize: 17),
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
                            return Constants.emailWarningText;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          icon: const Icon(
                            Icons.key,
                            color: Color.fromARGB(255, 210, 206, 206),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: Constants.passText,
                          hintStyle: const TextStyle(
                              color: Colors.white, fontSize: 17),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: (() {
                            //forgotpassbottomsheet gelecek
                            ForgotPasswordBottomSheet()
                                .showBottomSheetForgotPassword(context);
                          }),
                          child: Text(
                            Constants.forgotPassQuestionText,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                          // margin:
                          //     const EdgeInsets
                          //             .symmetric(
                          //         vertical:
                          //             5),
                          width: size.width * 0.8,
                          height: size.height * 0.07,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  }
                                  return;
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: const Color.fromARGB(
                                        255, 96, 222, 100)),
                                child: Text(
                                  Constants.signInText,
                                  style: const TextStyle(fontSize: 18),
                                )),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Constants.newUserQuestionText,
                            style: const TextStyle(color: Colors.white),
                          ),
                          TextButton(
                              onPressed: (() {
                                //signupbottomsheet gelecek.
                                SignUpBottomSheet()
                                    .showBottomSheetSignUp(context);
                              }),
                              child: Text(
                                Constants.signUpText,
                                style: const TextStyle(color: Colors.green),
                              ))
                        ],
                      )

                      // const Text("Deneme"),
                      // ElevatedButton(
                      //   child: const Text(
                      //       "close"),
                      //   onPressed: () =>
                      //       Navigator.pop(
                      //           context),
                      //),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
