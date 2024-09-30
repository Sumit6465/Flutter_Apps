import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class FlagController extends GetxController
    with GetSingleTickerProviderStateMixin {
  AnimationController? animationController;
  RxBool isAnimate = false.obs;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
  }

  void startAnimation() {
    if (animationController!.isAnimating) {
      isAnimate.value = false;
      animationController!.stop();
    } else {
      isAnimate.value = true;
      animationController!.forward();
      animationController!.repeat();
    }
  }
}
