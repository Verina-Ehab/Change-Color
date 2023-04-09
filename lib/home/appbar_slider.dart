import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_color/home/home_controller.dart';
import 'package:sliding_switch/sliding_switch.dart';

class AppBarSlider extends GetView<HomeControllerImp> {
  const AppBarSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
      child: SlidingSwitch(
        value: controller.slider,
        width: Get.width * 0.2,
        onChanged: (bool value) {
          controller.slider = value;
          controller.myServices.shPref.setBool("slider", value);
        },
        onDoubleTap: () {},
        onSwipe: () {},
        onTap: () {},
      ),
    );
  }
}
