import 'package:flutter/material.dart';
import 'package:grievanceportal/components/appbar.dart';
import 'package:grievanceportal/components/cutom_text.dart';

import '../components/button.dart';
import '../components/captcha.dart';
import '../components/custom_TextFeild.dart';
import '../config/theamdata.dart';
import '../utils/utils.dart';
import 'grievance.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>(); // Add a GlobalKey for the Form

  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool passwordVisible = false;
  bool onTap = false;
  late List<FocusNode> _otpFocusNodes;
  @override
  void initState() {
    String captcha = generateCaptcha();
    print('Generated CAPTCHA: $captcha');
    super.initState();
    passwordVisible = true;
    _otpFocusNodes = List.generate(6, (index) => FocusNode());
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    for (var node in _otpFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget sizedBox = Utils.getSizedBoxHeight(8.0);
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(lable: "Enter your mobile no."),
              sizedBox,
              CustomTextField(
                label: 'Phone',
                onChanged: (val) => {},
                controller: _phoneController,
                keyboardType: TextInputType.numberWithOptions(),
                validatorLabel: 'Login Id ',
                validator: false,
              ),
              Utils.getSizedBoxHeight(16.0),
              onTap == false
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(lable: "Enter your password"),
                        sizedBox,
                        TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                color: Colors.grey,
                                icon: Icon(passwordVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(
                                    () {
                                      passwordVisible = !passwordVisible;
                                    },
                                  );
                                },
                              ),
                              hintText: "Password",
                              filled: true),
                          obscureText: passwordVisible,
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            4,
                            (index) => Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: TextFormField(
                                  focusNode: _otpFocusNodes[index],
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  maxLength: 1,
                                  decoration: InputDecoration(
                                    counterText: "",
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    if (value.isNotEmpty) {
                                      if (index < _otpFocusNodes.length - 1) {
                                        FocusScope.of(context).requestFocus(
                                            _otpFocusNodes[index + 1]);
                                      } else {
                                        // Focus on last OTP field
                                        FocusScope.of(context).unfocus();
                                      }
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        sizedBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Timer: 30"),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Resend OTP",
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
              // CustomTextField(
              //   label: 'Password',
              //   onChanged: (val) => {},
              //   controller: _passwordController,
              //   keyboardType: TextInputType.text, validatorLable: 'password',
              //   suffixIcon: IconButton(
              //     color: Colors.grey,
              //     icon: Icon(passwordVisible
              //         ? Icons.visibility_off
              //         : Icons.visibility),
              //     onPressed: () {
              //       setState(
              //             () {
              //           passwordVisible = !passwordVisible;
              //         },
              //       );
              //     },
              //   ),
              //   obscured: passwordVisible,
              // ),
              sizedBox,
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                        //style: Theme.of(context).buttonTheme,
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).colorScheme.primaryContainer)),
                        onPressed: () {
                          bool isValid = _formKey.currentState!.validate();
                          if (isValid) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Grievancescreen()));
                          }
                        },
                        child: Text("${onTap == false ? "login" : "get OTP"}")),
                    sizedBox,
                    InkWell(
                        onTap: () {
                          setState(
                            () {
                              onTap = !onTap;
                            },
                          );
                        },
                        child: Text(
                            "${onTap == true ? "or login" : "or get OTP"}"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
