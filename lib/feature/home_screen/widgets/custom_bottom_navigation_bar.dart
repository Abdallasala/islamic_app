import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectindex;
  final int intindex;

  final String phototabs;

  const CustomBottomNavigationBar(
      {super.key,
      required this.intindex,
      required this.selectindex,
      required this.phototabs});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: selectindex == intindex
            ? AppColors.blackWithOpacity60
            : Colors.transparent,
      ),
      child: ImageIcon(
        AssetImage(phototabs),
      ),
    );
  }
}
