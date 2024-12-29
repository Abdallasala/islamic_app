import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_colors.dart';
import 'package:islamic_app/core/asset_manager.dart';
import 'package:islamic_app/feature/home_screen/home_screen.dart';
import 'package:islamic_app/feature/on_bording_screen/widgets/on_boarding_page.dart';

class OnboradingScreen extends StatefulWidget {
  static String onboradingnavigator = '/onboarding';

  const OnboradingScreen({super.key});

  @override
  State<OnboradingScreen> createState() => _OnboradingScreenState();
}

class _OnboradingScreenState extends State<OnboradingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _pages = [
    {
      "title": "Welcome to Islami",
      "subtitle": "Welcome to Islami App",
      "image": AssetsManager.welcome,
    },
    {
      "title": "Mosque",
      "subtitle": "We Are Very Excited To Have You In Our Community",
      "image": AssetsManager.mmmosque,
    },
    {
      "title": "Reading the Quran",
      "subtitle": "Read, and your Lord is the Most Generous",
      "image": AssetsManager.mosqueonboarding,
    },
    {
      "title": "Praise",
      "subtitle": "Praise the name of your Lord, the Most High",
      "image": AssetsManager.diaa,
    },
    {
      "title": "Holy Quran Radio",
      "subtitle":
          "You can listen to the Holy Quran Radio through the application for free and easily",
      "image": AssetsManager.microphone,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                AssetsManager.mosque,
                height: size.height * (151 / 932),
                width: size.width * (291 / 430),
              )),
          Container(
            margin: EdgeInsets.only(top: size.height * .10),
            child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  AssetsManager.islami,
                  height: size.height * (96 / 932),
                  width: size.width * (166 / 430),
                )),
          ),
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              final page = _pages[index];
              return OnboardingPage(
                title: page["title"]!,
                subtitle: page["subtitle"]!,
                image: page["image"]!,
              );
            },
          ),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentIndex > 0)
                  TextButton(
                    onPressed: () {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          _pages.length,
                          (index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: _currentIndex == index
                                  ? Colors.orange
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (_currentIndex < _pages.length - 1)
                  TextButton(
                    onPressed: () {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ),
                if (_currentIndex == _pages.length - 1)
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.home);
                    },
                    child: Text(
                      "Finish",
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
