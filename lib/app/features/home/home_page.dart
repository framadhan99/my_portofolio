import 'package:flutter/material.dart';
import '../../config/asset_colors.dart';
import '../../config/asset_paths.dart';
import 'widgets/drawer_mobile_widget.dart';
import 'widgets/header_mobile_widget.dart';
import 'widgets/header_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Web Layout
        if (constraints.maxWidth > 800) {
          return Scaffold(
            appBar: HeaderWidget(),
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  SizedBox(height: 32),
                  Row(
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
                ],
              ),
            ),
          );
        } else {
          // Mobile Layout
          return Scaffold(
            appBar: HeaderMobileWidget(),
            drawer: DrawerMobileWidget(),
          );
        }
      },
    );
  }
}
