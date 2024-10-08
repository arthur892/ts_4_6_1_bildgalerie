import 'package:flutter/material.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/screens/gallery.dart';
import 'package:ts_4_6_1_bildgalerie/features/profile/screens/profile.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/data/gallery_repo.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});
  final GalleryRepo galleryRepo = GalleryRepo();

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      Gallery(
        galleryRepo: widget.galleryRepo,
      ),
      Profile()
    ];
  }

  int _selectedIndex = 0;
  void _onDestinationSelected(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.photo_size_select_actual_rounded),
                label: "Bilder"),
            NavigationDestination(icon: Icon(Icons.person), label: "Über mich")
          ],
          onDestinationSelected: (value) {
            _onDestinationSelected(value);
          },
          indicatorColor: Colors.red.shade100,
          selectedIndex: _selectedIndex,
        ),
        body: _screens[_selectedIndex],
        appBar: AppBar(
          title: Text("AppBar"),
        ),
      ),
    );
  }
}
