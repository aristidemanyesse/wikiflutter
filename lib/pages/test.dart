import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:widgets_to_image/widgets_to_image.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:http/http.dart' as http;
import 'dart:typed_data';
import 'dart:ui';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  // WidgetsToImageController to access widget
  WidgetsToImageController controller = WidgetsToImageController();
  // to save image bytes of widget
  Uint8List? bytes;

  Future<void> _saveImage(Uint8List bytes) async {
    // Obtenir le répertoire d'application où enregistrer l'image
    Directory appDir = await getApplicationDocumentsDirectory();
    String filePath = '${appDir.path}/image.png';

    // Écrire les données de l'image dans un fichier
    File file = File(filePath);
    await file.writeAsBytes(bytes as List<int>);

    // Afficher un message pour indiquer que l'image a été enregistrée
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Image enregistrée avec succès dans $filePath'),
    ));
  }

  Future<List<Color>> extractDominantColors(String imageUrl) async {
    try {
      // Charger l'image depuis l'URL
      http.Response response = await http.get(Uri.parse(imageUrl));
      Uint8List imageBytes = Uint8List.fromList(response.bodyBytes);

      // Créer un image provider
      ImageProvider imageProvider = MemoryImage(imageBytes);

      // Générer la palette de couleurs
      PaletteGenerator paletteGenerator =
          await PaletteGenerator.fromImageProvider(imageProvider);

      // Extraire les couleurs dominantes
      List<Color> dominantColors = [
        paletteGenerator.dominantColor!.color,
        paletteGenerator.dominantColor!.titleTextColor
      ];

      return dominantColors;
    } catch (e) {
      print('Erreur lors de l\'extraction des couleurs : $e');
      return [];
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Widgets To Image'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              "Widgets",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            WidgetsToImage(
              controller: controller,
              child: cardWidget(),
            ),
            const Text(
              "Images",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            if (bytes != null) buildImage(bytes!),
            Center(
              child: FutureBuilder<List<Color>>(
                future: extractDominantColors(
                    'https://via.placeholder.com/350x150'),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Erreur : ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    List<Color> colors = snapshot.data!;
                    return Row(
                      children: colors
                          .map((color) => Container(
                                width: 100,
                                height: 100,
                                color: color,
                                child: Center(
                                  child: Text(
                                    'Couleur 1',
                                    style: TextStyle(color: color),
                                  ),
                                ),
                              ))
                          .toList(),
                    );
                  } else {
                    return Text('Aucune donnée');
                  }
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.image_outlined),
          onPressed: () async {
            final bytes = await controller.capture();
            setState(() {
              this.bytes = bytes;
            });
          },
        ),
      );

  Widget cardWidget() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(16),
            ),
            child: Image.network(
              'https://via.placeholder.com/350x150',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Title",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  "Description",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildImage(Uint8List bytes) {
    _saveImage(bytes);
    return Image.memory(bytes);
  }
}
