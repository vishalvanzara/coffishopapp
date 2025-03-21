import 'package:coffishopapp/model/onbording_model.dart';
import 'package:coffishopapp/presentation/authentication/login_screen.dart';
import 'package:coffishopapp/presentation/onbording/onbordin_slide_data.dart';
import 'package:flutter/material.dart';

class OnbordinMain extends StatelessWidget {
  OnbordinMain({super.key});

  final onbordingSlidedata = [
    OnbordingModel(
        buttonText: 'NEXT',
        descriptionText:
            'Customize your own drink exactly how you like it by adding any topping you like!!!',
        imageUrl: 'asserts/images/onbording/slide1.png',
        index: 0,
        lableText: 'Choose and customize your Drinks'),
    OnbordingModel(
        buttonText: 'NEXT',
        descriptionText:
            'You can place your order quickly and easly without wasting time. You can also schedule orders via your smarthphone.',
        imageUrl: 'asserts/images/onbording/slide2.png',
        index: 1,
        lableText: 'Quickly and easly'),
    OnbordingModel(
        buttonText: 'NEXT',
        descriptionText:
            'Exciting prizes await you! Redeem yours by collecting all the points after purchase in the app!',
        imageUrl: 'asserts/images/onbording/slide3.png',
        index: 2,
        lableText: 'Get and Redeem Voucher'),
  ];

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF5F5F5),
      
      body: SafeArea(
        
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 24,
          ),
          child: PageView.builder(
              controller: pageController,
              itemCount: onbordingSlidedata.length,
              itemBuilder: (context, index) => OnbordinSlideData(
                    imageUrl: onbordingSlidedata[index].imageUrl,
                    labelText: onbordingSlidedata[index].lableText,
                    descriptionText: onbordingSlidedata[index].descriptionText,
                    buttonText: onbordingSlidedata[index].buttonText,
                    correntIndex: index,
                    slideLanght: onbordingSlidedata.length,
                    ontabButton: () {
                      if (index == (onbordingSlidedata.length - 1)) {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                          (val) => false,
                        );
                        return;
                      }
                      pageController.nextPage(
                          duration: Duration(milliseconds: 100),
                          curve: Curves.ease);
                    },
                  )),
        ),
      ),
    );
  }
}
