import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login_signup_ui_clone/views/signup.dart';
import 'package:login_signup_ui_clone/widgets/my_input_field.dart';
import 'package:login_signup_ui_clone/widgets/my_text_button.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController;
  TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .3,
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage("assets/images/Background.png"),
                  fit: BoxFit.cover)),
          child: Center(
            child: Image(
              image: AssetImage("assets/images/Logo.png"),
              width: 100,
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(64))),
            child: SafeArea(
              top: false,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Log In",
                        style: TextStyle(fontSize: 48),
                      ),
                      SizedBox(height: 60),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyInputField(
                            label: 'Email',
                            placeholder: "Email Address",
                            onChange: (value) {
                              this.emailController.text = value;
                            },
                          ),
                          SizedBox(height: 40),
                          MyInputField(
                            label: 'Password',
                            placeholder: "Password",
                            onChange: (value) {
                              this.passwordController.text = value;
                            },
                            isPasswordField: true,
                          ),
                          SizedBox(height: 40),
                          MyTextButton(
                            label: "Log in",
                            onTap: () {
                              print(this.emailController.text +
                                  " | " +
                                  this.passwordController.text);
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(fontSize: 18),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
