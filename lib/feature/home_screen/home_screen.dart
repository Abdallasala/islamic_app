import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_colors.dart';
import 'package:islamic_app/feature/home_screen/hadith_tap/hadith_tap.dart';
import 'package:islamic_app/feature/home_screen/pray_times_tap/pray_timetab.dart';
import 'package:islamic_app/feature/home_screen/quran_tap/quran_tap.dart';
import 'package:islamic_app/feature/home_screen/radio_tap/radio_tap.dart';
import 'package:islamic_app/feature/home_screen/saphia_tap/sphia_tap.dart';
import 'package:islamic_app/feature/home_screen/widgets/custom_bottom_navigation_bar.dart';

import '../../core/asset_manager.dart';

class HomeScreen extends StatefulWidget {
  static String home = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectindex = 0;
  List<Widget> taps = [
    QuranTap(),
    HadithTap(),
    SphiaTap(),
    RadioTap(),
    PrayTimeTap(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.primary,
          fixedColor: AppColors.white,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            selectindex = index;
            setState(() {});
          },
          currentIndex: selectindex,
          items: [
            BottomNavigationBarItem(
                icon: CustomBottomNavigationBar(
                    intindex: 0,
                    selectindex: selectindex,
                    phototabs: AssetsManager.icQuran),
                label: 'Quran'),
            BottomNavigationBarItem(
                icon: CustomBottomNavigationBar(
                    intindex: 1,
                    selectindex: selectindex,
                    phototabs: AssetsManager.icAhadeth),
                label: 'hadith'),
            BottomNavigationBarItem(
                icon: CustomBottomNavigationBar(
                    intindex: 2,
                    selectindex: selectindex,
                    phototabs: AssetsManager.icSebha),
                label: 'saphia'),
            BottomNavigationBarItem(
                icon: CustomBottomNavigationBar(
                    intindex: 3,
                    selectindex: selectindex,
                    phototabs: AssetsManager.icRadio),
                label: 'radio'),
            BottomNavigationBarItem(
                icon: CustomBottomNavigationBar(
                    intindex: 4,
                    selectindex: selectindex,
                    phototabs: AssetsManager.icPrayTimes),
                label: 'praytimes'),
          ]),
      body: taps[selectindex],
    );
  }
}
