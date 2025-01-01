import 'package:flutter/material.dart';
import 'package:islamic_app/core/asset_manager.dart';

class QuranTap extends StatelessWidget {
  const QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(AssetsManager.mainBackground),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
