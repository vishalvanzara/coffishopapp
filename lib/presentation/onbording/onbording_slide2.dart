import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingSlide2 extends StatelessWidget {
  const OnbordingSlide2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEFEFE),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
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
                    'asserts/images/onbording/slide2.png',
                    width: 227,
                    height: 225,
                  ),
                ],
              ),
              SizedBox(
                height: 92,
              ),
              Text(
                'Quickly and easly',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0XFF3C3C3C)),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'You can place your order quickly and easly without wasting time. You can also schedule orders via your smarthphone',
                style: TextStyle(
                    color: Color(0XFF555555),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              Flexible(
                child: SizedBox.expand(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedSmoothIndicator(
                    activeIndex: 1,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Color(0XFF5D4047),
                      dotHeight: 12,
                      dotWidth: 12,
                      expansionFactor: 2,
                      dotColor: Color(
                        0XFFCACACA,
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 156,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
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
