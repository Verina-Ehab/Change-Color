import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_color/services.dart';

abstract class HomeController extends GetxController {
  changeBckgroundColor();
}

class HomeControllerImp extends HomeController {

  int bckgroundColor = Colors.white.value;
  late bool slider ;
  MyServices myServices = Get.find();

  @override
  changeBckgroundColor() {
    if (slider) {
      bckgroundColor =
          Colors.primaries[Random().nextInt(Colors.primaries.length)].value;
      myServices.shPref.setInt("bckgroundColor" , bckgroundColor);
      update();
    }
  }

  @override
  void onInit() {    
    slider = myServices.shPref.getBool("slider") ?? true;
    bckgroundColor = myServices.shPref.getInt("bckgroundColor") ?? Colors.white.value;
    super.onInit();
  }
}
