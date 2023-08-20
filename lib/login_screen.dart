import 'package:flutter/material.dart';
import 'package:second_video_raw_material/app_utils.dart';
import 'package:second_video_raw_material/registration_screen.dart';
import 'package:second_video_raw_material/widgets/input_field_widget.dart';
import 'package:second_video_raw_material/widgets/primary_Button.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF5145C1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        width: 20.0,
                        height: 10.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFFCDC8F5),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 1.5,
                      ),
                      Container(
                        width: 20.0,
                        height: 5.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    'JOT',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                'Welcome back !',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50.0,
              ),
              const Text(
                'Please enter your details below',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 70.0,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        InputField(
                          text: 'Enter your email',
                          icon: Icons.email,
                          controller: emailController,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        InputField(
                          text: 'Enter your password',
                          icon: Icons.password,
                          controller: passwordController,
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 70.0,
                        ),
                        PrimaryButton(
                          text: "Sign In",
                          textColor: colorPrimary,
                          onPressed: () async {
                            // if(validate()){
                            //
                            // }
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            const Text(
                              "Don't have an account!! ",
                              // already have an account
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.white),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomeownerDataPage()));
                              },
                              child: const Text(
                                "Register", // Sign In
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
