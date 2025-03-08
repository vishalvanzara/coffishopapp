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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SkipButton(),
        const SizedBox(height: 52),
        Image.asset(
          widget.imageUrl,
          width: 284,
          height: 261,
        ),
        const SizedBox(height: 63),
        Text(
          widget.labelText,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          widget.descriptionText,
          style: const TextStyle(
            fontSize: 16,
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
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0XFF5D4037),
                dotColor: Color(0XFFCACACA),
                dotHeight: 12,
                dotWidth: 12,
                expansionFactor: 2,
              ),
            ),
            GestureDetector(
              onTap: () => widget.ontabButton(),
              child: Container(
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
                      style: const TextStyle(
                        color: Color(0XFFFEFEFE),
                        fontSize: 14,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Color(0XFFFEFEFE),
                      size: 16,
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
