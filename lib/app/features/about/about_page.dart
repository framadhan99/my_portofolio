import 'package:flutter/material.dart';

import '../../config/asset_colors.dart';
import '../../config/asset_paths.dart';
import 'widgets/slider_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Image.asset(AssetPaths.profilePhoto)),
        SizedBox(width: 32),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Me',
                style: TextStyle(
                  fontSize: 65,
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus netus in. Aliquet donec morbi convallis pretium. Turpis tempus pharetra',
                style: TextStyle(fontSize: 21),
              ),
              SizedBox(height: 8),
              SliderWidget(value: 0.9, label: '90%', title: 'Flutter'),
              SizedBox(height: 8),
              SliderWidget(value: 0.5, label: '50%', title: 'Kotlin'),
              SizedBox(height: 8),
              SliderWidget(value: 0.5, label: '50%', title: 'Kotlin'),
              SizedBox(height: 8),
              SliderWidget(value: 0.5, label: '50%', title: 'Kotlin'),
            ],
          ),
        ),
      ],
    );
  }
}
