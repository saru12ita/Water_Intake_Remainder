import 'package:flutter/material.dart';
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
  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        shape: BoxShape.circle,
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
                itemBuilder:
                    (context, index) => Column(
                      children: [
                        SizedBox(height: sizeV * 5),
                        Text(
                          onboardingContents[index].title,
                          style: kTitle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: sizeV * 5),
                        Container(
                          height: sizeV = 50,
                          child: Image.asset(
                            onboardingContents[index].image,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: sizeV * 5),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: kBodyText1,
                            children: [
                              TextSpan(
                                text: "Let's Remind ",
                                style: TextStyle(color: kPrimaryColor),
                              ),
                              TextSpan(text: "us"),
                              TextSpan(text: "to drink"),
                              TextSpan(text: "water"),
                            ],
                          ),
                        ),
                        SizedBox(height: sizeV *5),
                      ],
                    ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Skip'),
                  Row(
                    children: List.generate(
                      onboardingContents.length,
                      (index) => dotIndicator(index),
                    ),
                  ),
                  Text('Next'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
