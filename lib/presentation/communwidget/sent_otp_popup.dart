import 'package:coffishopapp/presentation/authentication/otp_loading_screen.dart';
import 'package:coffishopapp/presentation/communwidget/sent_otp_popup_common_cta.dart';
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
                      fontSize: screenHeight * 0.014,
                    ),
                  ),
                  TextSpan(
                    text: '081234567891 ',
                    style: TextStyle(
                      color: Color(0XFF3C3C3C),
                      fontSize: screenHeight * 0.014,
                    ),
                  ),
                  TextSpan(
                    text: 'is active',
                    style: TextStyle(
                      color: Color(0XFF555555),
                      fontSize: screenHeight * 0.014,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.029),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SentOtpPopupCommonCta(
                  buttonText: 'Cancel',
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  buttonBackground: Color(0XFFFEFEFE),
                  buttonTextColor: Color(0XFF3C3C3C),
                ),
                SentOtpPopupCommonCta(
                  buttonText: 'Continue',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OtpLoadingScreen()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
