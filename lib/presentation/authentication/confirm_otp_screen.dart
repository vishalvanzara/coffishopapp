import 'package:coffishopapp/presentation/authentication/create_pin_screen.dart';
import 'package:coffishopapp/presentation/communwidget/auth_button.dart';
import 'package:coffishopapp/presentation/communwidget/auth_screen_footer_text.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ConfirmOtpScreen extends StatefulWidget {
  const ConfirmOtpScreen({super.key});

  @override
  State<ConfirmOtpScreen> createState() => _ConfirmOtpScreenState();
}

class _ConfirmOtpScreenState extends State<ConfirmOtpScreen> {
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        backgroundColor: Color(0XFFF5F5F5),
        centerTitle: false,
        leading: IconButton(
          iconSize: 24,
          padding: EdgeInsets.symmetric(horizontal: 16),
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          'Confirm Otp Code',
          style: TextStyle(color: Color(0XFF3C3C3C), fontSize: 16),
        ),
      ),
      backgroundColor: Color(0XFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0XFF3C3C3C).withValues(alpha: .15),
                  blurRadius: 50,
                  spreadRadius: 0,
                  offset: Offset(0, 50),
                ),
              ]),
              child: Divider(
                color: Color(0XFF3C3C3C).withValues(alpha: .15),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 24),
                  Text(
                    '081234567891',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Enter the 5-digit OTP code that has been sent from SMS to complete your account registration',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24),
                  PinCodeTextField(
                    textInputAction: TextInputAction.done,
                    animationType: AnimationType.fade,
                    appContext: context,
                    length: 5,
                    pinTheme: PinTheme(
                      fieldOuterPadding: EdgeInsets.symmetric(horizontal: 4),
                      inActiveBoxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 4,
                          offset: Offset.zero,
                          spreadRadius: 0,
                          color: Color(0XFF945927),
                        ),
                      ],
                      activeBoxShadow: [
                        BoxShadow(
                            offset: Offset.zero,
                            blurRadius: 4,
                            blurStyle: BlurStyle.outer,
                            color: Color(0XFF945927),
                            spreadRadius: 0)
                      ],
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8),
                      fieldHeight: 70,
                      fieldWidth: 60,
                      activeFillColor: Colors.transparent,
                      inactiveFillColor: Colors.grey.shade300,
                      inactiveColor: Colors.transparent,
                      activeColor: const Color(0XFF945927),
                      selectedFillColor: Colors.transparent,
                      selectedColor: Color(0XFF945927),
                    ),
                    mainAxisAlignment: MainAxisAlignment.center,
                    autoFocus: true,
                    enableActiveFill: true,
                    autoDismissKeyboard: true,
                    textStyle: const TextStyle(
                      fontSize: 40,
                      color: Color(0XFF555555),
                    ),
                    cursorHeight: 36,
                    cursorWidth: 3,
                    cursorColor: Color(0XFF3C3C3C),
                    keyboardType: TextInputType.number,
                    controller: otpController,
                    blinkWhenObscuring: false,
                  ),
                  const SizedBox(height: 32),
                  AuthScreenFooterText(
                    initialeText: "Haven't got the confirmation code yet? ",
                    linkText: 'Resend',
                    linkTextColor: Colors.blue,
                    onTabLink: () {},
                  ),
                  SizedBox(
                    height: 102,
                  ),
                  AuthButton(
                      buttonText: 'Confirm',
                      onTab: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreatePinScreen()));
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
