import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';

class OnbardingController {
  static OnbardingController get Instance => Get.find();
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(int index) => currentPageIndex.value = index;
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      final deviceStorage = GetStorage();
      if (kDebugMode) {
        print('============== GET STOREAGE Next button ==========');
        print(deviceStorage.read('isFirstTime'));
      }
      deviceStorage.write('isFirstTime', false);

      if (kDebugMode) {
        print('============== GET STOREAGE Next button ==========');
        print(deviceStorage.read('isFirstTime'));
      }
      Get.offAll(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
