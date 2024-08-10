import 'package:flutter/material.dart';

class OnboardingSlide extends StatelessWidget {
  final String imagePath;

  const OnboardingSlide({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height:
            double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit
                .cover, 
          ),
        ),
      ),
    );
  }
}
