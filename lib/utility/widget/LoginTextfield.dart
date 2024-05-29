import 'dart:io';

import 'package:assessment_project/utility/strings/constants.dart';
import 'package:flutter/material.dart';

class LoginCredentialEmailTextField extends StatelessWidget {
  final String hintText;
  final bool validator;
  final FocusNode focusNode;
  final String error;
  final TextEditingController email;

  const LoginCredentialEmailTextField(
      {super.key,
      required this.hintText,
      required this.email,
      required this.error,
      required this.focusNode,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email Address',
          style: TextStyle(color: Color(textFieldHeaderBackgroundColor)),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: size.height / 15,
          width: size.width,
          decoration: BoxDecoration(
              color: const Color(textFieldBackgroundColor),

              // backgroundBlendMode: BlendMode.dst,

              borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
            focusNode: focusNode,
            controller: email,
            // cursorColor: const Color(onBoardingButtonColor),
            // style: const TextStyle(color: Color(hintTextColor)),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  color: email.text.isNotEmpty ? Colors.red : Colors.black),
              border: OutlineInputBorder(
                gapPadding: Platform.isAndroid ? 9 : 4,
              ),
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                gapPadding: Platform.isAndroid ? 7 : 4,
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    // color: Color(onBoardingButtonColor),
                    width: 1), // Border color when focused
              ),
            ),
          ),
        ),
        if (validator == true)
          Padding(
            padding: EdgeInsets.only(
              right: email.text.isEmpty ? 20 : 151,
              top: 8,
            ),
            child: Text(
              error,
              style: const TextStyle(color: Colors.red),
            ),
          ),
      ],
    );
  }
}

class LoginCredentialPasswordTextField extends StatelessWidget {
  final String hintText;
  final bool validator;
  final TextEditingController password;
  final FocusNode focusNode;
  final String error2;
  const LoginCredentialPasswordTextField(
      {super.key,
      required this.hintText,
      required this.password,
      required this.validator,
      required this.error2,
      required this.focusNode});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(color: Color(textFieldHeaderBackgroundColor)),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: size.height / 15,
          width: size.width,
          decoration: BoxDecoration(
              color: const Color(textFieldBackgroundColor),

              // backgroundBlendMode: BlendMode.dst,

              borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
            focusNode: focusNode,
            onFieldSubmitted: (value) {},
            controller: password,
            // cursorColor: const Color(onBoardingButtonColor),
            // style: const TextStyle(color: Color(hintTextColor)),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  color: password.text.isNotEmpty
                      ? Colors.red
                      : const Color(passwordHintTextColor)),
              border: OutlineInputBorder(
                gapPadding: Platform.isAndroid ? 9 : 4,
              ),
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                gapPadding: Platform.isAndroid ? 7 : 4,
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    // color: Color(onBoardingButtonColor),
                    width: 1), // Border color when focused
              ),
            ),
          ),
        ),
        if (validator == true)
          Padding(
            padding: EdgeInsets.only(
              right: password.text.isEmpty ? 20 : 151,
              top: 8,
            ),
            child: Text(
              password.text.isEmpty
                  ? 'Password is empty'
                  : password.text.length < 8
                      ? 'Password not up to 8 characters'
                      : '',
              style: const TextStyle(color: Colors.red),
            ),
          ),
      ],
    );
  }
}
