import 'package:assessment_project/pages/Explore.dart';
import 'package:assessment_project/utility/strings/constants.dart';
import 'package:assessment_project/utility/widget/LoginTextfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  bool validator1 = false;
  bool validator2 = false;
  String error = '';
  String error2 = '';
  final _focusNode1 = FocusNode();
  final _focusNode2 = FocusNode();
  final ScrollController _scrollController = ScrollController();

  TextEditingController passwordController = TextEditingController();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();

    _focusNode1.addListener(() {
      setState(() {
        _isFocused = _focusNode1.hasFocus;
      });
      if (!_focusNode1.hasFocus) {
        _scrollController.animateTo(
          0.0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
    _focusNode2.addListener(() {
      setState(() {
        _isFocused = _focusNode2.hasFocus;
      });
      if (!_focusNode1.hasFocus) {
        _scrollController.animateTo(
          0.0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _focusNode1.dispose();
    _focusNode2.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: _isFocused
            ? const ClampingScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        child: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Log in to your Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const Spacer(),
              const Text(
                'Welcome back! Please enter your registered email addresss to continue',
                style: TextStyle(color: Color(0xff797979)),
              ),
              const Spacer(),
              LoginCredentialEmailTextField(
                hintText: 'Hello@busha.co',
                email: emailController,
                validator: validator1,
                focusNode: _focusNode1, error: error,
              ),
              const Spacer(),
              LoginCredentialPasswordTextField(
                hintText: 'Enter Password',
                password: passwordController,
                validator: validator2,
                focusNode: _focusNode2, error2: error2,
              ),
              const Spacer(
                flex: 15,
              ),
              GestureDetector(
                onTap: () {
                  if (emailController.text.isEmpty) {
                    setState(() {
                      validator1 = true;
                      error = 'email is empty';
                    });
                  }else{
                        if (!emailController.text.contains('@')) {
                    setState(() {
                      validator1 = true;
                      error = '@ is required';
                    });
                  }else{
                    setState(() {
                      validator1 = false;
                      error = '';
                    });
                  }
                    
                  }
              
                  if (passwordController.text.isEmpty) {
                    setState(() {
                      validator2 = true;
                      error2 = 'password is required';
                    });
                  } else{
                    setState(() {
                      validator2 = false;
                      error2 = '';
                    });
                  }
                  if (passwordController.text.length < 8) {
                    setState(() {
                      validator2 = true;
                      error2 = 'Password not up to 8 characters';
                    });
                  }else{
                     setState(() {
                      validator2 = false;
                      error2 = '';
                    });
                  }

                  if (emailController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty &&
                      emailController.text.contains('@') &&
                      passwordController.text.length >= 8) {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const Explore()),
                        (route) => false);
                  }
                },
                child: Container(
                  height: size.height / 12,
                  width: size.width / 1,
                  decoration: BoxDecoration(
                      color: const Color(loginButtonColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 9,
              )
            ],
          ),
        ),
      ),
    );
  }
}
