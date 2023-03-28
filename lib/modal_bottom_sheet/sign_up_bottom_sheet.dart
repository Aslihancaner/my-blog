import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_blog/constants/text_constants.dart';

class SignUpBottomSheet {
  void showBottomSheetSignUp(BuildContext context) {
    final GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
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
                    key: formKey2,
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
                                return Constants.emailWarningText;
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              icon: const Icon(Icons.email,
                                  color: Color.fromARGB(255, 210, 206, 206)),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: Constants.emailText,
                              hintStyle: const TextStyle(
                                  color: Colors.white, fontSize: 17),
                            ),
                          ),
                          TextFormField(
                            controller: phoneNumber,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            textAlignVertical: TextAlignVertical.top,
                            validator: (value) {
                              if (phoneNumber.text.isEmpty) {
                                return Constants.phoneNumWarningText;
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              icon: const Icon(
                                Icons.phone,
                                color: Color.fromARGB(255, 210, 206, 206),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: Constants.phoneNumText,
                              hintStyle: const TextStyle(
                                  color: Colors.white, fontSize: 17),
                            ),
                          ),
                          TextFormField(
                            controller: userName,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            textAlignVertical: TextAlignVertical.top,
                            validator: (value) {
                              if (userName.text.isEmpty) {
                                return Constants.userNameWarningText;
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              icon: const Icon(
                                Icons.perm_identity,
                                color: Color.fromARGB(255, 210, 206, 206),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: Constants.userNameText,
                              hintStyle: const TextStyle(
                                  color: Colors.white, fontSize: 17),
                            ),
                          ),
                          TextFormField(
                            controller: password,
                            style: const TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            textAlignVertical: TextAlignVertical.top,
                            validator: (value) {
                              if (password.text.isEmpty) {
                                return Constants.passWarningText;
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
                              margin: const EdgeInsets.only(
                                  top: 25, right: 30, left: 30, bottom: 5),
                              width: size.width * 0.8,
                              height: size.height * 0.07,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: ElevatedButton(
                                    onPressed: (() {
                                      if (formKey2.currentState!.validate()) {
                                        Get.back();
                                      }
                                      return;
                                    }),
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color.fromARGB(
                                            255, 96, 222, 100)),
                                    child: Text(
                                      Constants.signUpText,
                                      style: const TextStyle(fontSize: 18),
                                    )),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Constants.haveAccountQuestionText,
                                style: const TextStyle(color: Colors.white),
                              ),
                              TextButton(
                                  onPressed: (() {
                                    Get.back();
                                  }),
                                  child: Text(
                                    Constants.signInText,
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 96, 222, 100)),
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
