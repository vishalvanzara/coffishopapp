import 'package:coffishopapp/presentation/communwidget/skipbutton.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordinSlideData extends StatefulWidget {
  final String imageUrl;
  final String descriptionText;
  final String labelText;
  final String buttonText;
  final int correntIndex;
  final int slideLanght;
  final Function ontabButton;
  const OnbordinSlideData({
    super.key,
    required this.imageUrl,
    required this.labelText,
    required this.descriptionText,
    required this.buttonText,
    required this.correntIndex,
    required this.ontabButton,
    required this.slideLanght,
  });

  @override
  State<OnbordinSlideData> createState() => _OnbordinSlideDataState();
}

class _OnbordinSlideDataState extends State<OnbordinSlideData> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SkipButton(),
        SizedBox(height: screenHeight * 0.064),
        Image.asset(
          widget.imageUrl,
          width: screenwidth * 0.757,
          height: screenHeight * 0.321,
        ),
        SizedBox(height: screenHeight * 0.077),
        Text(
          widget.labelText,
          style: TextStyle(
            fontSize: screenHeight * 0.02463,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: screenHeight * 0.019),
        Text(
          widget.descriptionText,
          style: TextStyle(
            fontSize: screenHeight * 0.019,
          ),
        ),
        const Flexible(
          child: SizedBox.expand(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedSmoothIndicator(
              activeIndex: widget.correntIndex,
              count: widget.slideLanght,
              effect: ExpandingDotsEffect(
                activeDotColor: Color(0XFF5D4037),
                dotColor: Color(0XFFCACACA),
                dotHeight: screenHeight * 0.01477,
                dotWidth: screenHeight * 0.01477,
                expansionFactor: 2,
              ),
            ),
            GestureDetector(
              onTap: () => widget.ontabButton(),
              child: Container(
                width: screenwidth * 0.416,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: const Color(0XFF5D4037),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Text(
                      widget.buttonText,
                      style: TextStyle(
                        color: Color(0XFFFEFEFE),
                        fontSize: screenHeight * 0.0172,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Color(0XFFFEFEFE),
                      size: screenHeight * 0.0197,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
