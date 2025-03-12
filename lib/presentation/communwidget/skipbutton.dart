import 'package:coffishopapp/presentation/authentication/registration_screen.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => RegistrationScreen()),
            );
          },
          child: Text(
            'Skip',
            style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Color(0XFF3C3C3C),
                fontSize: screenheight * 0.0172),
          ),
        )
      ],
    );
  }
}
