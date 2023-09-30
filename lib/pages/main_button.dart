import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleShadow(
      opacity: 0.7, // Default: 0.5
      color: Colors.blue, // Default: Black
      offset: const Offset(5, 5), // Default: Offset(2, 2)
      sigma: 10,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          // Couleur de base du bouton
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(color: Color(0xFF373E49)), // Bordure du bouton
          ),
          elevation: 10, // Contrôle de l'ombre du bouton
        ),
        child: Text(
          'Mon Bouton 3D',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ), // Default: 2
    );
  }
}
