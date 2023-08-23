import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/layout/HomeLayout.dart';
import 'package:task3/modules/HomePage/HomePage.dart';
import 'package:task3/modules/Splash%20Screen/SplashScreen.dart';

import '../../shared/components/components.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var usernameController = TextEditingController();
  var passController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    double screenHeight = mediaQueryData.size.height;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        height: screenHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1.0),
              spreadRadius: 3,
              blurRadius: 12,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 20.0,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: 20.0,
                      end: 20.0,
                    ),
                    child: Image(
                      image: AssetImage('assets/tal.png'),
                    ),
                  ),
                  const Text(
                    'Sign up for free',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Color(0xFF080951),
                    ),
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  defaultTextForm(
                    label: 'Username',
                    controller: usernameController,
                    preIcon: Icons.person,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Username must not be empty';
                      }
                      return null;
                    },
                  ),
                  defaultTextForm(
                    label: 'Email Address',
                    controller: emailController,
                    keyboard: TextInputType.emailAddress,
                    preIcon: Icons.email,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Email must not be empty';
                      }
                      return null;
                    },
                  ),
                  defaultTextForm(
                    label: 'Password',
                    controller: passController,
                    isPassword: isPassword,
                    keyboard: TextInputType.visiblePassword,
                    preIcon: Icons.lock,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Password must not be empty';
                      }
                      return null;
                    },
                    obscure: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    sufIcon:
                        isPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  CheckboxListTile(
                    title: const Text("Remember me"),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  defaultButton(
                      background: Colors.orange.shade900,
                      border: 20.0,
                      isUpper: false,
                      width: screenWidth * 0.83,
                      text: 'Create Account',
                      function: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeLayout()));
                        }
                      }),
                  const SizedBox(
                    height: 70.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
