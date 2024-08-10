import 'package:flutter/material.dart';
import '../../core/styles/text_styles.dart';

class OnboardingBottomCard extends StatelessWidget {
  final String title;
  final String description;
  final int currentPage;
  final int totalPages;
  final VoidCallback onNextPressed;

  const OnboardingBottomCard({
    super.key,
    required this.title,
    required this.description,
    required this.currentPage,
    required this.totalPages,
    required this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: TextStyles.title, textAlign: TextAlign.center),
            const SizedBox(height: 16),
            Text(description,
                style: TextStyles.description, textAlign: TextAlign.center),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: onNextPressed,
                child: const Text(
                  'Selanjutnya',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
