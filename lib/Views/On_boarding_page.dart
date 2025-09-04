import 'package:flutter/material.dart';
import 'package:water_intake_remainder/Screens/HomePage.dart';
import 'package:water_intake_remainder/app_styles.dart';
import 'package:water_intake_remainder/model/onboard_data.dart';
import 'package:water_intake_remainder/size_configs.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 10,
      width: currentPage == index ? 20 : 10,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingContents.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: sizeH * 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        onboardingContents[index].title,
                        style: kTitle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: sizeV * 4),
                      SizedBox(
                        height: sizeV * 40,
                        child: Image.asset(
                          onboardingContents[index].image,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: sizeV * 4),
                      Text(
                        onboardingContents[index].description,
                        style: kBodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: sizeH * 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    currentPage != onboardingContents.length - 1
                        ? TextButton(
                            onPressed: () {
                              _pageController.jumpToPage(
                                  onboardingContents.length - 1);
                            },
                            child: const Text("Skip"),
                          )
                        : const SizedBox(width: 60),

                    Row(
                      children: List.generate(
                        onboardingContents.length,
                        (index) => dotIndicator(index),
                      ),
                    ),

                    currentPage == onboardingContents.length - 1
                        ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: sizeH * 5,
                                vertical: sizeV * 1.5,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  HomePage(),
                                ),
                              );
                            },
                            child: const Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          )
                        : TextButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration:
                                    const Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: const Text("Next"),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
