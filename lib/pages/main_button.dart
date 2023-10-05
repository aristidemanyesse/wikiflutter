import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:wikibet/pages/ossature_app.dart';
import 'package:wikibet/tools/tools.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppConstante.primaryBlue, AppConstante.grenn1])),
        child: ElevatedButton(
          onPressed: () {
            Get.to(OssatureApp());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(
                  color: Colors.blueAccent), // Bordure du bouton
            ),
          ),
          child: const Text(
            'Nouveau départ',
            style: AppTextStyle.titleMedium,
          ),
        ),
      ),
    );
  }
}
