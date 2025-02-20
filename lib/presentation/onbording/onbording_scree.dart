import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingScree extends StatelessWidget {
  const OnbordingScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEFEFE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Skip'),
                ],
              ),
              SizedBox(
                height: 52,
              ),
              Column(
                children: [
                  Image.asset(
                    'asserts/images/onbording/slide1.png',
                    height: 261,
                    width: 284,
                  ),
                ],
              ),
              SizedBox(
                height: 63,
              ),
              Text(
                'Choose and customize your Drinks',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0XFF3C3C3C)),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Customize your own drink exactly how you like it by adding any topping you like!!!',
                style: TextStyle(
                    color: Color(0XFF555555),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 74,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      dotColor: Color(0XFFCACACA),
                      activeDotColor: Color(0XFF5D4047),
                      dotWidth: 12,
                      dotHeight: 12,
                      expansionFactor: 2,
                    ),
                  ),
                  Container(
                    width: 160,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0XFF5D4037),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text(
                          'Next',
                          style:
                              TextStyle(color: Color(0XFFFEFEFE), fontSize: 14),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0XFFFEFEFE),
                          size: 16,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
