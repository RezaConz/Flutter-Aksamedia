import 'package:flutter/material.dart';
import '../../data/models/onboarding_content.dart';

class OnboardingController extends ChangeNotifier {
  final PageController pageController = PageController();
  int currentPage = 0;

  final List<OnboardingContent> contentList = [
    OnboardingContent(
      title: 'Gratis Materi Belajar Menjadi Seller Handal',
      description:
          'Nggak bisa jualan? Jangan khawatir, Tokorame akan membimbing kamu hingga menjadi seller langsung dari ahlinya',
      imagePath: 'assets/1.png',
    ),
    OnboardingContent(
      title: 'Ribuan Produk dengan Kualitas Terbaik',
      description:
          'Tokorame menyediakan ribuan produk dengan kualitas terbaik dari seller terpercaya',
      imagePath: 'assets/2.png',
    ),
    OnboardingContent(
      title: 'Toko Online Unik Untuk Kamu Jualan',
      description: 'Subdomain unik dan toko online profesional siap pakai',
      imagePath: 'assets/3.png',
    ),
  ];

  void onPageChanged(int index) {
    currentPage = index;
    notifyListeners();
  }

  void nextPage() {
    if (currentPage < contentList.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
