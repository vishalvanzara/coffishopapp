import 'package:coffishopapp/presentation/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingSlide3 extends StatelessWidget {
  const OnbordingSlide3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEFEFE),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Skip'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'asserts/images/onbording/slide3.png',
                    height: 261,
                    width: 284,
                  ),
                  SizedBox(
                    height: 63,
                  ),
                  Text(
                    'Choose and customize your Drinks',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0XFF3C3C3C),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Customize your own drink exactly how you like it by adding any topping you like!!!',
                    style: TextStyle(
                        color: Color(0XFF555555),
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedSmoothIndicator(
                        activeIndex: 2,
                        count: 3,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Color(0XFF5D4047),
                          dotColor: Color(0XFFCACACA),
                          dotHeight: 12,
                          dotWidth: 12,
                          expansionFactor: 2,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                              (val) => false);
                        },
                        child: Container(
                          height: 48,
                          width: 160,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0XFF5D4047),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Login/Register',
                                style: TextStyle(
                                    color: Color(0XFFFEFEFE), fontSize: 14),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0XFFFEFEFE),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
