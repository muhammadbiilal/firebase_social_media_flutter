import 'package:flutter/material.dart';
import 'package:tech_media/res/component/input_text_field.dart';
import 'package:tech_media/res/component/round_button.dart';
import 'package:tech_media/utils/routes/route_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.01),
                Text(
                  'Welcome to App',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                SizedBox(height: height * 0.01),
                Text(
                  'Enter you email address\nto connect your account',
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                Form(
                    key: _formKey,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.06, bottom: height * 0.01),
                      child: Column(
                        children: [
                          // SizedBox(height: height * 0.01),
                          InputTextField(
                            myController: emailController,
                            focusNode: emailFocusNode,
                            onFieldSubmittedValue: (value) {},
                            keyboardType: TextInputType.emailAddress,
                            obscureText: false,
                            hint: 'Email',
                            onValidator: (value) {
                              return value.isEmpty ? "enter email" : null;
                            },
                          ),
                          SizedBox(height: height * 0.01),
                          InputTextField(
                            myController: passwordController,
                            focusNode: passwordFocusNode,
                            onFieldSubmittedValue: (value) {},
                            keyboardType: TextInputType.emailAddress,
                            obscureText: false,
                            hint: 'Password',
                            onValidator: (value) {
                              return value.isEmpty ? "enter password" : null;
                            },
                          ),
                        ],
                      ),
                    )),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 15, decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(height: 40),
                RoundButton(
                  title: 'Login',
                  onPress: () {
                    if (_formKey.currentState!.validate()) {
                      // TODO: Implement login logic
                      emailController.clear();
                      passwordController.clear();
                      emailFocusNode.unfocus();
                      passwordFocusNode.unfocus();
                    }
                  },
                ),
                SizedBox(height: height * 0.03),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.singUpScreen);
                  },
                  child: Text.rich(
                    TextSpan(
                        text: "Don't have an account? ",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontSize: 15),
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    fontSize: 15,
                                    decoration: TextDecoration.underline),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
