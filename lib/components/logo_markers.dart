import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  final String path;
  final double width;
  final double height;

  const MyLogo({
    super.key,
    required this.width,
    required this.height,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      path,
      width: width,
      height: height,
    );
  }
}

class WikibetLogo extends StatelessWidget {
  final double width;
  final double height;

  const WikibetLogo({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/logo.png",
      width: width,
      height: height,
    );
  }
}

class MyLogoShadowed extends StatelessWidget {
  final String path;
  final double width;
  final double height;

  const MyLogoShadowed({
    super.key,
    required this.width,
    required this.height,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return DropShadowImage(
      offset: const Offset(8, 8),
      scale: 1,
      blurRadius: 8,
      image: Image.asset(
        path,
        width: width,
        height: height,
      ),
    );
  }
}
