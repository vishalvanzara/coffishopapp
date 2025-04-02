import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthScreenFooterText extends StatelessWidget {
  const AuthScreenFooterText({
    super.key,
    required this.initialeText,
    required this.linkText,
    required this.onTabLink,
    this.linkTextColor,
  });
  final String initialeText;
  final String linkText;
  final Function onTabLink;
  final Color? linkTextColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: initialeText,
              // 'Don’t have an account? ',
              style: TextStyle(
                fontSize: 14,
                color: Color(0XFF555555),
              ),
            ),
            TextSpan(
              text: linkText,

              // 'Register',
              style: TextStyle(
                fontSize: 14,
                color: linkTextColor ?? Color(0XFF5D4037),
              ),

              recognizer: TapGestureRecognizer()..onTap = () => onTabLink(),
            ),
          ],
        ),
      ),
    );
  }
}
