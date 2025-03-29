import 'package:flutter/material.dart';

class OtpLoadingScreen extends StatelessWidget {
  const OtpLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEFEFE),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asserts/images/coffee_loading.gif',
              scale: 0.8,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Please wait a minute,',
              style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 14,
              ),
            ),
            const Text(
              'we will send you the OTP code.',
              style: TextStyle(
                color: Color(0XFF3C3C3C),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
