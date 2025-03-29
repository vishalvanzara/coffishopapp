import 'package:coffishopapp/presentation/authentication/otp_loading_screen.dart';
import 'package:flutter/material.dart';

class SentOtpPopup extends StatelessWidget {
  const SentOtpPopup({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Dialog(
      backgroundColor: Color(0XFFF5F5F5),
      insetPadding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.125),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 17, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asserts/images/register_otp_popup.png',
              height: screenHeight * 0.198,
              width: screenWidth * 0.448,
            ),
            SizedBox(
              height: screenHeight * 0.029,
            ),
            const Text(
              'Send OTP code',
              style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.009,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'We will send the OTP code via SMS. Make sure the number ',
                    style: TextStyle(
                      color: Color(0XFF555555),
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: '081234567891 ',
                    style: TextStyle(
                      color: Color(0XFF3C3C3C),
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: 'is active',
                    style: TextStyle(
                      color: Color(0XFF555555),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0XFF5D4037),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'cancel',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0XFF3C3C3C),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OtpLoadingScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0XFF5D4037),
                      border: Border.all(color: Color(0XFF5D4037)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0XFFFEFEFE),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
