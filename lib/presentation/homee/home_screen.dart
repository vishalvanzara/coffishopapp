import 'dart:async';

import 'package:coffishopapp/model/pills_model.dart';
import 'package:coffishopapp/presentation/communwidget/home_carousel_item.dart';
import 'package:coffishopapp/presentation/communwidget/pills.dart';
import 'package:coffishopapp/presentation/communwidget/prodct_tile.dart';
import 'package:coffishopapp/presentation/communwidget/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int carouselIndex = 0;
  double scrollOffset = 0;
  late CarouselController homeCarouselController;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    homeCarouselController = CarouselController(initialItem: carouselIndex);
    _incrementCounter();
  }

  _incrementCounter() {
    Timer.periodic(const Duration(seconds: 3), (val) {
      if (carouselIndex < 2) {
        scrollOffset = scrollOffset + 400;
        homeCarouselController.jumpTo(scrollOffset);

        carouselIndex++;
      } else if (carouselIndex == 2) {
        carouselIndex = 0;
        scrollOffset = 0;
        homeCarouselController.jumpTo(scrollOffset);
      }
      setState(() {});
    });
  }

  List<String> carouselImages = [
    'asserts/images/home/carousel/carousel_1.png',
    'asserts/images/home/carousel/carousel_2.png',
    'asserts/images/home/carousel/carousel_3.png',
  ];

  List<PillsModel> pillsList = [
    PillsModel(text: 'Filter', icon: Icons.filter),
    PillsModel(text: 'Rating 4.5+s', icon: Icons.star),
    PillsModel(text: 'Price', icon: Icons.price_check_rounded),
    PillsModel(icon: Icons.discount, text: 'Promo'),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0XFFFEFEFE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(
                    child: SearchTextField(),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_outlined,
                      color: Color(0XFF5D4037),
                      size: 24,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: screenHeight * 0.168,
                width: screenWidth,
                child: CarouselView(
                  controller: homeCarouselController,
                  scrollDirection: Axis.horizontal,
                  itemSnapping: true,
                  itemExtent: screenWidth,
                  children: carouselImages
                      .map(
                        (image) => HomeCarouselItem(imageUrl: image),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 16),
              TabBar(
                labelStyle: TextStyle(
                  fontSize: screenHeight * 0.019,
                  color: Color(0XFF5D4037),
                  fontWeight: FontWeight.w500,
                ),
                indicatorColor: const Color(0XFF5D4037),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: const Color(0XFFEFEBE9),
                controller: tabController,
                unselectedLabelColor: const Color(0XFF868686),
                tabs: const [
                  Tab(text: 'Coffee'),
                  Tab(
                    text: 'Non coffee',
                  ),
                  Tab(text: 'Pastry'),
                ],
              ),
              Flexible(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 8),
                        SizedBox(
                          height: screenHeight * 0.0517,
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: pillsList.length,
                            itemBuilder: (context, index) => Pills(
                              pillsData: pillsList[index],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        ProductTile(productDescription: 'hi how there')
                      ],
                    ),
                    const Text('Hello from tab 2'),
                    const Text('Hello from tab 3'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
