import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.buttonText,
    required this.onTab,
  });
  final String buttonText;
  final Function onTab;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(
            Size(screenWidth, 48),
          ),
          backgroundColor: const WidgetStatePropertyAll(
            Color(0XFFCACACA),
          ),
        ),
        onPressed: () =>onTab(),
        child:  Text(
          buttonText,
          style: TextStyle(
            color: Color(0XFFFFFFFF),
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
