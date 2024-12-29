//import 'dart:ui_web';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/feature/on_bording_screen/on_borading_screen.dart';

import '../../core/asset_manager.dart';

//import 'package:islami_app/lib/feature/home_screen/home_screen.dart';
//import 'package:islamic_app/core/asset_manager.dart';
class SplashScreen extends StatefulWidget {
  static String splashname = '/splash';
  static final Duration _duration = Duration(milliseconds: 1750);

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamed(context, OnboradingScreen.onboradingnavigator);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(AssetsManager.backgroundimagesplash),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: FadeInDown(
                duration: SplashScreen._duration,
                child: Image.asset(
                  AssetsManager.Glow,
                  height: size.height * (313 / 932),
                  width: size.width * (88 / 430),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: size.height * .50),
              child: Align(
                alignment: Alignment.centerLeft,
                child: FadeInLeft(
                  duration: SplashScreen._duration,
                  child: Image.asset(
                    AssetsManager.shapeleftsplash,
                    height: size.height * (187 / 932),
                    width: size.width * (87 / 430),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * .50, left: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: FadeInRight(
                  duration: SplashScreen._duration,
                  child: Image.asset(
                    AssetsManager.shaperightsplash,
                    height: size.height * (216 / 932),
                    width: size.width * (101 / 430),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                AssetsManager.mosque,
                height: size.height * (291 / 932),
                width: size.width * (157 / 430),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * .38),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    ZoomIn(
                      duration: SplashScreen._duration,
                      child: Image.asset(
                        AssetsManager.oBJECTSLogosplash,
                        height: size.height * (154 / 932),
                        width: size.width * (173 / 430),
                      ),
                    ),
                    ZoomIn(
                      duration: SplashScreen._duration,
                      child: Image.asset(
                        AssetsManager.islami,
                        height: size.height * (77 / 932),
                        width: size.width * (133 / 430),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FadeInUp(
                duration: SplashScreen._duration,
                child: Image.asset(
                  AssetsManager.routegold,
                  height: size.height * (180 / 932),
                  width: size.width * (76 / 430),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
