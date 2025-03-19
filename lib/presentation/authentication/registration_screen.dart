import 'package:coffishopapp/presentation/authentication/login_screen.dart';
import 'package:coffishopapp/presentation/authentication/privacy_policy.dart';
import 'package:coffishopapp/presentation/authentication/terms_of_service.dart';
import 'package:coffishopapp/presentation/communwidget/auth_button.dart';
import 'package:coffishopapp/presentation/communwidget/auth_screen_footer_text.dart';
import 'package:coffishopapp/presentation/communwidget/common_text_field.dart';
import 'package:coffishopapp/presentation/communwidget/shop_fee_icon.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final nameController = TextEditingController();

  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0XFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.053,
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.127,
                  ),
                  ShopFeeIcon(),
                  SizedBox(
                    height: 28,
                  ),
                  CommonTextField(
                    controller: nameController,
                    labelName: 'Name',
                    hintText: 'Input your number',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CommonTextField(
                    controller: numberController,
                    labelName: 'Phone',
                    hintText: 'Input your number',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'By tapping "Register" you agree to our\n',
                            style: TextStyle(
                                fontSize: 12, color: Color(0XFF7C7C7C)),
                          ),
                          TextSpan(
                            text: 'Terms of Use',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0XFF032172),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TermsOfService(),
                                    ),
                                  ),
                          ),
                          const TextSpan(
                            text: ' and ',
                            style: TextStyle(
                                fontSize: 12, color: Color(0XFF7C7C7C)),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: const TextStyle(
                                fontSize: 12, color: Color(0XFF032172)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PrivacyPolicy(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  AuthButton(buttonText: 'Register', onTab: () {}),
                  const SizedBox(height: 183),
                  AuthScreenFooterText(
                      initialeText: 'Have an account? ',
                      linkText: 'Login',
                      onTabLink: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
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
