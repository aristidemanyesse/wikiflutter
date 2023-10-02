import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class BackgroundBlur extends StatelessWidget {
  const BackgroundBlur({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: Container(
              height: Get.size.height,
              width: Get.size.width,
              child: Image.asset(
                "assets/images/bg.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.25),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 70, sigmaY: 70),
              child: Container(
                height: Get.size.height,
                width: Get.size.width,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
