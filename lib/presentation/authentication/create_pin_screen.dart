import 'package:coffishopapp/presentation/communwidget/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CreatePinScreen extends StatefulWidget {
  const CreatePinScreen({super.key});

  @override
  State<CreatePinScreen> createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends State<CreatePinScreen> {
  final pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        backgroundColor: Color(0XFFF5F5F5),
        centerTitle: false,
        leading: IconButton(
            padding: EdgeInsets.symmetric(horizontal: 16),
            iconSize: 24,
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back)),
        title: Text(
          'Create your pin',
          style: TextStyle(color: Color(0XFF3C3C3C)),
        ),
      ),
      backgroundColor: Color(0XFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
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
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Image.asset(
                    'asserts/images/password_image.png',
                    height: 150,
                    width: 146,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Finally, Your final step....',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0XFF3C3C3C), fontSize: 14),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Enter 6 numbers to keep your account safe',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  PinCodeTextField(
                    textStyle: TextStyle(color: Color(0XFF3C3C3C)),
                    animationType: AnimationType.fade,
                    controller: pinController,
                    appContext: context,
                    length: 6,
                    obscureText: false,
                    showCursor: false,
                    enableActiveFill: true,
                    autoFocus: true,
                    pinTheme: PinTheme(
                      fieldOuterPadding: const EdgeInsets.only(right: 24),
                      activeColor: const Color(0XFF3C3C3C),
                      inactiveColor: const Color(0XFF3C3C3C),
                      selectedColor: const Color(0XFF3C3C3C),
                      activeFillColor: const Color(0XFF3C3C3C),
                      inactiveFillColor: const Color(0XFFFEFEFE),
                      selectedFillColor: const Color(0XFF3C3C3C),
                      borderWidth: 1,
                      disabledColor: const Color(0XFF3C3C3C),
                      fieldHeight: 30,
                      fieldWidth: 30,
                      borderRadius: const BorderRadius.all(Radius.zero),
                      shape: PinCodeFieldShape.circle,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  AuthButton(buttonText: 'Confirm', onTab: () {})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
