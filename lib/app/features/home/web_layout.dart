import 'package:flutter/material.dart';

import '../../config/asset_colors.dart';
import '../../config/asset_paths.dart';
import '../about/about_page.dart';
import '../projects/project_page.dart';
import 'widgets/header_widget.dart';

final GlobalKey homeKey = GlobalKey();
final GlobalKey aboutMeKey = GlobalKey();
final GlobalKey projectKey = GlobalKey();
final GlobalKey contactKey = GlobalKey();

class WebLayout extends StatefulWidget {
  const WebLayout({super.key});

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(
        scrollToHome: () => _scrollToSection(homeKey),
        scrollToAboutMe: () => _scrollToSection(aboutMeKey),
        scrollToProjects: () => _scrollToSection(projectKey),
        scrollToContact: () => _scrollToSection(contactKey),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        // key: homeKey,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 32),
            Row(
              key: homeKey,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Hi I am', style: TextStyle(fontSize: 24)),
                      // SizedBox(height: 8),
                      Text(
                        'Fajar Ramadhan',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: AssetColors.orangeColor,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra',
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
                    ],
                  ),
                ),
                SizedBox(width: 32),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(AssetPaths.profilePhoto),
                      // Row(
                      //   children: [
                      //     Text('Email:', style: TextStyle(fontSize: 24)),
                      //     Text(
                      //       'fajar.ramadhan08@gmail.com',
                      //       style: TextStyle(fontSize: 24),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 150),
            // About Me
            AboutPage(key: aboutMeKey),
            // Projects
            ProjectPage(key: projectKey),
          ],
        ),
      ),
    );
  }
}
