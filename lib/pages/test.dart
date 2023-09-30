import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sliding_switch/sliding_switch.dart';

class TextPage extends StatefulWidget {
  const TextPage({super.key});

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          body: CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                stretch: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: const Text('Exemple de TabBar avec SliverAppBar'),
                  background: Image.network(
                    'https://via.placeholder.com/800x200',
                    fit: BoxFit.cover,
                  ),
                  stretchModes: const [StretchMode.zoomBackground],
                ),
                bottom: const TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(text: 'Onglet 1'),
                    Tab(text: 'Onglet 2'),
                    Tab(text: 'Onglet 3'),
                    Tab(text: 'Onglet 3'),
                    Tab(text: 'Onglet 3'),
                    Tab(text: 'Onglet 3'),
                  ],
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: [
                    const Center(child: Text('Contenu de l\'onglet 1')),
                    const Center(child: Text('Contenu de l\'onglet 2')),
                    Center(
                      child: SlidingSwitch(
                        value: false,
                        width: 250,
                        onChanged: (bool value) {
                          print(value);
                        },
                        height: 55,
                        animationDuration: const Duration(milliseconds: 400),
                        onTap: () {},
                        onDoubleTap: () {},
                        onSwipe: () {},
                        textOff: "Female",
                        textOn: "Male",
                        iconOff: Icons.male,
                        iconOn: Icons.female,
                        contentSize: 17,
                        colorOn: const Color(0xffdc6c73),
                        colorOff: const Color(0xff6682c0),
                        background: const Color(0xffe4e5eb),
                        buttonColor: const Color(0xfff7f5f7),
                        inactiveColor: const Color(0xff636f7b),
                      ),
                    ),
                    const Column(
                      children: [
                        Icon(EvaIcons.twitter),
                        Icon(EvaIcons.facebook),
                        Icon(EvaIcons.github),
                        Icon(EvaIcons.google),
                        Icon(EvaIcons.linkedin),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: ConvexAppBar(
            disableDefaultTabController: true,
            items: const [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.map, title: 'Discovery'),
              TabItem(icon: Icons.add, title: 'Add'),
              TabItem(icon: Icons.message, title: 'Message'),
              TabItem(icon: Icons.people, title: 'Profile'),
            ],
            onTap: (int i) => print('click index=$i'),
          )),
    );
  }
}
