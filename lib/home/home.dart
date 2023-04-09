import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_color/home/appbar_slider.dart';
import 'package:random_color/home/home_controller.dart';

class Home extends GetView<HomeControllerImp> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
        // backgroundColor: ,
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: const Text('Change color mode'),
          // centerTitle: true ,
          actions: const [AppBarSlider()],
        ),
        body: GetBuilder<HomeControllerImp>(
          builder: (controller) => InkWell(
              onTap: () {
                controller.changeBckgroundColor();
              },
              child: Container(
                color: Color(controller.bckgroundColor),
                child: const Center(
                  child: Text(
                    "Hello there!\nThis application provide the following features:\n1- Color changing\n2- Slider to stop changing colors or not\n3- Save your last color and slider mode",
                    style: TextStyle( fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                  ),
                ),
              )),
        ));
  }
}
