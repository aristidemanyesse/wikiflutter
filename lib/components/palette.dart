import 'package:blur/blur.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:simple_shadow/simple_shadow.dart';

class Palette extends StatefulWidget {
  const Palette({super.key});

  @override
  _PaletteState createState() => _PaletteState();
}

class _PaletteState extends State<Palette> {
  PaletteGenerator? paletteGenerator;

  @override
  void initState() {
    super.initState();
    _generatePalette();
  }

  Future<void> _generatePalette() async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(
      const AssetImage(
          'assets/images/logo.png'), // Remplacez par le chemin de votre image
    );

    setState(() {
      this.paletteGenerator = paletteGenerator;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Palette de couleurs'),
        ),
        body: Column(
          children: <Widget>[
            const Center(
              child: DelayedDisplay(
                fadingDuration: Duration(seconds: 1),
                child: Text("jk"),
              ),
            ),
            SimpleShadow(
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
                    side: const BorderSide(
                        color: Colors.blueAccent), // Bordure du bouton
                  ),
                  elevation: 10, // Contrôle de l'ombre du bouton
                ),
                child: const Text(
                  'Mon Bouton 3D',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ), // Default: 2
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: paletteGenerator?.dominantColor?.color ?? Colors.white,
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Couleur dominante',
                  style: TextStyle(
                    color: paletteGenerator?.dominantColor?.titleTextColor ??
                        Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              color: paletteGenerator?.vibrantColor?.color ?? Colors.white,
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Couleur vibrante',
                    style: TextStyle(
                      color: paletteGenerator?.vibrantColor?.titleTextColor ??
                          Colors.black,
                    ),
                  ),
                ).frosted(
                  blur: 0.4,
                  borderRadius: BorderRadius.circular(20),
                  padding: const EdgeInsets.all(8),
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  scale: 5.5,
                ),
                const Text(
                  'Frost',
                  style: TextStyle(fontSize: 20),
                ).frosted(
                  blur: 7,
                  borderRadius: BorderRadius.circular(0),
                  padding: const EdgeInsets.all(8),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
