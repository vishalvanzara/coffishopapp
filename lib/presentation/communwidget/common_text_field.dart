import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    super.key,
    required this.controller,
    required this.labelName,
    this.textInputAction,
    this.textInputType,
    this.hintText,
  });
  final String labelName;
  final TextEditingController controller;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final String? hintText;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelName,
          style: TextStyle(
            color: Color(0XFF3C3C3C),
            fontSize: screenHeight * 0.014,
          ),
        ),
        SizedBox(height: screenHeight * 0.004),
        TextField(
          keyboardType: widget.textInputType,
          textInputAction: widget.textInputAction,
          controller: widget.controller,
          cursorColor: const Color(0XFF8A8A8A),
          cursorHeight: screenHeight * 0.019,
          cursorErrorColor: Colors.red,
          style: TextStyle(
            color: Color(0XFF3C3C3C),
            fontSize: screenHeight * 0.017,
          ),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0XFF5D4037),
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(
                color: Color(0XFF8A8A8A),
                fontSize: screenHeight * 0.017,
                fontWeight: FontWeight.normal),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0XFF8A8A8A),
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
