import 'package:coffishopapp/presentation/authentication/login_screen.dart';
import 'package:coffishopapp/presentation/communwidget/auth_button.dart';
import 'package:coffishopapp/presentation/communwidget/auth_screen_footer_text.dart';
import 'package:coffishopapp/presentation/communwidget/common_text_field.dart';
import 'package:coffishopapp/presentation/communwidget/sent_otp_popup.dart';
import 'package:coffishopapp/presentation/communwidget/shop_fee_icon.dart';
import 'package:coffishopapp/presentation/communwidget/terms_and_privacy_text.dart';
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
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.127),
                  ShopFeeIcon(),
                  const SizedBox(height: 28),
                  CommonTextField(
                    controller: nameController,
                    labelName: 'Name',
                    hintText: 'Input your name',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                  ),
                  const SizedBox(height: 8),
                  CommonTextField(
                    controller: numberController,
                    labelName: 'Phone',
                    hintText: 'Input your phone number',
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.phone,
                  ),
                  const SizedBox(height: 16),
                  const TermsandPrivacyText(),
                  const SizedBox(height: 28),
                  AuthButton(
                    buttonText: 'Register',
                    onTab: () {
                      showDialog(
                          context: context,
                          builder: (context) => SentOtpPopup());
                    },
                  ),
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
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
