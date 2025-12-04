import 'package:flutter/material.dart';

import '../../config/asset_colors.dart';
import '../../config/asset_paths.dart';
import '../about/about_page.dart';
import 'widgets/drawer_mobile_widget.dart';
import 'widgets/header_mobile_widget.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderMobileWidget(),
      drawer: DrawerMobileWidget(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 32),
            Image.asset(AssetPaths.profilePhoto, width: 200),
            SizedBox(height: 32),
            Text(
              'Hi I am',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            Text(
              'Fajar Ramadhan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AssetColors.orangeColor,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 21),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(188, 52),
                backgroundColor: AssetColors.orangeColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text('Hire Me'),
            ),
            SizedBox(width: 32),

            // About Me
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
