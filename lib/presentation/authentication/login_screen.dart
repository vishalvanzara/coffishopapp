import 'package:coffishopapp/presentation/authentication/registration_screen.dart';
import 'package:coffishopapp/presentation/communwidget/auth_button.dart';
import 'package:coffishopapp/presentation/communwidget/auth_screen_footer_text.dart';
import 'package:coffishopapp/presentation/communwidget/common_text_field.dart';
import 'package:coffishopapp/presentation/communwidget/shop_fee_icon.dart';
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenhight * 0.127,
                  ),
                  ShopFeeIcon(),
                  SizedBox(
                    height: screenhight * 0.039,
                  ),
                  CommonTextField(
                    controller: numberController,
                    labelName: 'Mobile No',
                    hintText: 'Input your number',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  AuthButton(buttonText: 'Login', onTab: () {}),
                  const SizedBox(height: 268),
                  AuthScreenFooterText(
                      initialeText: 'Don’t have an account?',
                      linkText: 'Register',
                      onTabLink: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationScreen()),
                            (val) => false);
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
