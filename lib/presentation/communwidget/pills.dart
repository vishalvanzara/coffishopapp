import 'package:coffishopapp/model/pills_model.dart';
import 'package:flutter/material.dart';

class Pills extends StatelessWidget {
  const Pills({
    super.key,
    required this.pillsData,
  });

  final PillsModel pillsData;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: pillsData.isSelected ? Color(0XFF5D4037) : Color(0XFFEFEBE9),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(right: 8, top: 4, bottom: 4),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          Icon(
            pillsData.icon,
            size: screenHeight * 0.0197,
            color: pillsData.isSelected
                ? const Color(0XFFFEFEFE)
                : const Color(0XFF3C3C3C),
          ),
          SizedBox(
            width: screenWidth * 0.010,
          ),
          Text(
            pillsData.text,
            style: TextStyle(
              fontSize: screenHeight * 0.014,
              color:
                  pillsData.isSelected ? Color(0XFFFEFEFE) : Color(0XFF3C3C3C),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
