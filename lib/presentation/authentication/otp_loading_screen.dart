import 'package:coffishopapp/presentation/authentication/confirm_otp_screen.dart';
import 'package:flutter/material.dart';

class OtpLoadingScreen extends StatefulWidget {
  const OtpLoadingScreen({super.key});

  @override
  State<OtpLoadingScreen> createState() => _OtpLoadingScreenState();
}

class _OtpLoadingScreenState extends State<OtpLoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () async {
      if (!mounted) return;
      await Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const ConfirmOtpScreen()),
      );
    });
  }

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
