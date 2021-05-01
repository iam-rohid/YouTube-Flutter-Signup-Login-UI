import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login_signup_ui_clone/views/login.dart';
import 'package:login_signup_ui_clone/widgets/my_input_field.dart';
import 'package:login_signup_ui_clone/widgets/my_text_button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController;
  TextEditingController passwordController;
  TextEditingController confirmPassword;
  TextEditingController firstNameController;
  TextEditingController lastNameController;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPassword = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage("assets/images/Background.png"),
                  fit: BoxFit.cover)),
          child: SafeArea(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.keyboard_arrow_left,
                          size: 48, color: Colors.white),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 38, color: Colors.white),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                )),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(64)),
            ),
            clipBehavior: Clip.antiAlias,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 60,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyInputField(
                      label: 'First name',
                      placeholder: "First name",
                      onChange: (value) {
                        this.firstNameController.text = value;
                      },
                    ),
                    SizedBox(height: 20),
                    MyInputField(
                      label: 'Last name',
                      placeholder: "Last name",
                      onChange: (value) {
                        this.lastNameController.text = value;
                      },
                    ),
                    SizedBox(height: 20),
                    MyInputField(
                      label: 'Email',
                      placeholder: "Email Address",
                      onChange: (value) {
                        this.emailController.text = value;
                      },
                    ),
                    SizedBox(height: 20),
                    MyInputField(
                      label: 'Password',
                      placeholder: "Password",
                      onChange: (value) {
                        this.passwordController.text = value;
                      },
                      isPasswordField: true,
                    ),
                    SizedBox(height: 20),
                    MyInputField(
                      label: 'Confirm Password',
                      placeholder: "Password",
                      onChange: (value) {
                        this.confirmPassword.text = value;
                      },
                      isPasswordField: true,
                    ),
                    SizedBox(height: 20),
                    MyTextButton(
                      label: "Sign Up",
                      onTap: () {
                        print(this.firstNameController.text);
                        print(this.lastNameController.text);
                        print(this.emailController.text);
                        print(this.passwordController.text);
                        print(this.confirmPassword.text);
                      },
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "You already have an account? ",
                          style: TextStyle(fontSize: 18),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LogIn()),
                                (route) => false);
                          },
                          child: Text(
                            "Log In",
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
      ]),
    );
  }
}
