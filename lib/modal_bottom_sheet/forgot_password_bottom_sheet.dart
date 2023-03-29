import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_blog/constants/color_constants.dart';
import 'package:my_blog/constants/text_constants.dart';
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
        backgroundColor: ColorConstants.bottomSheetBackgroundColor,
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
                          style: TextStyle(color: ColorConstants.white),
                          cursorColor: ColorConstants.white,
                          textAlignVertical: TextAlignVertical.top,
                          validator: (value) {
                            if (!EmailValidator.validate(value!)) {
                              return Constants.emailWarningText;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            icon: Icon(Icons.person,
                                color: ColorConstants.iconColor),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: ColorConstants.white)),
                            hintText: Constants.emailText,
                            hintStyle: TextStyle(
                                color: ColorConstants.white, fontSize: 17),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        TextFormField(
                          controller: password,
                          style: TextStyle(color: ColorConstants.white),
                          cursorColor: ColorConstants.white,
                          textAlignVertical: TextAlignVertical.top,
                          validator: (value) {
                            if (password.text.isEmpty) {
                              return Constants.passWarningText;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.key,
                              color: ColorConstants.iconColor,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: ColorConstants.white)),
                            hintText: Constants.passText,
                            hintStyle: TextStyle(
                                color: ColorConstants.white, fontSize: 17),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        TextFormField(
                          controller: rePassword,
                          style: TextStyle(color: ColorConstants.white),
                          cursorColor: ColorConstants.white,
                          textAlignVertical: TextAlignVertical.top,
                          validator: (value) {
                            if (rePassword.text.isEmpty) {
                              return Constants.rePassWarningText;
                            } else if (value != password.text) {
                              return Constants.rePassIncorrectText;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: ColorConstants.iconColor,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: ColorConstants.white)),
                            hintText: Constants.rePassText,
                            hintStyle: TextStyle(
                                color: ColorConstants.white, fontSize: 17),
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
                                      primary: ColorConstants
                                          .saveChangesButtonColor),
                                  child: Text(
                                    Constants.changePassText,
                                    style: const TextStyle(fontSize: 18),
                                  )),
                            )),
                      ]),
                ))),
          );
        });
  }
}
