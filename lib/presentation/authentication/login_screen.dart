import 'package:coffishopapp/presentation/authentication/registration_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenhight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0XFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.053),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenhight * 0.127,
                ),
                Center(
                  child: Image.asset(
                    'asserts/images/registericon.png',
                    width: screenwidth * 0.584,
                    height: screenhight * 0.123,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(
                  height: screenhight * 0.039,
                ),
                Text(
                  'Mobile No',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0XFF3C3C3C),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                TextField(
                  controller: numberController,
                  cursorColor: Color(0XFF8A8A8A),
                  cursorErrorColor: Colors.red,
                  cursorHeight: 16,
                  style: const TextStyle(
                    color: Color(0XFF3C3C3C),
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0XFF5D4037),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: 'Input your number',
                    hintStyle: const TextStyle(
                        color: Color(0XFF8A8A8A),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF8A8A8A),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        fixedSize: WidgetStatePropertyAll(
                          Size(screenwidth, 48),
                        ),
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0XFFCACACA),
                        )),
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 268),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don’t have an account? ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0XFF555555),
                          ),
                        ),
                        TextSpan(
                            text: 'Register',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0XFF5D4037),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationScreen()),
                                    (val) => false);
                              }),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
