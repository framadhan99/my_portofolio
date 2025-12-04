import 'package:flutter/material.dart';
import 'package:my_portofolio/app/features/home/mobile_layout.dart';
import 'package:my_portofolio/app/features/home/web_layout.dart';

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
          return WebLayout();
        } else {
          // Mobile Layout
          return MobileLayout();
        }
      },
    );
  }
}
