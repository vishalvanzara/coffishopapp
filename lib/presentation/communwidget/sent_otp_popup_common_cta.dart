import 'package:flutter/material.dart';

class SentOtpPopupCommonCta extends StatelessWidget {
  const SentOtpPopupCommonCta({
    super.key,
    required this.buttonText,
    this.buttonBackground,
    this.buttonTextColor,
    required this.onTap,
  });

  final String buttonText;
  final Color? buttonBackground;
  final Color? buttonTextColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.009,
          horizontal: screenWidth * 0.064,
        ),
        decoration: BoxDecoration(
          color: buttonBackground ?? Color(0XFF5D4037),
          border: Border.all(
            color: const Color(0XFF5D4037),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: screenHeight * 0.017,
            color: buttonTextColor ?? const Color(0XFFFEFEFE),
          ),
        ),
      ),
    );
  }
}
