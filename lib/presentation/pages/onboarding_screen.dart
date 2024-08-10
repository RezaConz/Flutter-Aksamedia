import 'package:flutter/material.dart';
import '../widgets/onboarding_slide.dart';
import '../widgets/onboarding_bottom_card.dart';
import '../widgets/dot_indicator.dart';
import '../controllers/onboarding_controller.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnboardingController(),
      child: Consumer<OnboardingController>(
        builder: (context, controller, child) {
          return Scaffold(
            body: Stack(
              children: [
                PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: controller.onPageChanged,
                  itemCount: controller.contentList.length,
                  itemBuilder: (context, index) {
                    return OnboardingSlide(
                      imagePath: controller.contentList[index].imagePath,
                    );
                  },
                ),
                OnboardingBottomCard(
                  title: controller.contentList[controller.currentPage].title,
                  description: controller
                      .contentList[controller.currentPage].description,
                  currentPage: controller.currentPage,
                  totalPages: controller.contentList.length,
                  onNextPressed: controller.nextPage,
                ),
                Positioned(
                  top: 40,
                  right: 16,
                  child: GestureDetector(
                    onTap: () {
                      // Belum ada action
                    },
                    child: const Text(
                      'Lewati',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 300,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      controller.contentList.length,
                      (index) => DotIndicator(
                        isActive: controller.currentPage == index,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
