import 'package:flutter/material.dart';
import 'package:my_portofolio/app/config/asset_colors.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Text(
          'Projects',
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
        SizedBox(height: 32),
        Wrap(
          spacing: 8,
          children: [
            GestureDetector(
              onTap: () {},
              child: Chip(
                label: Text('Flutter'),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: AssetColors.orangeColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                side: BorderSide(color: Colors.transparent, width: 1),
              ),
            ),
            Chip(label: Text('Dart')),
            Chip(label: Text('Firebase')),
          ],
        ),
      ],
    );
  }
}
