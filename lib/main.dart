import 'package:flutter/material.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/screens/gallery_screen.dart';
import 'package:ts_4_6_1_bildgalerie/features/profile/data/profile_repo.dart';
import 'package:ts_4_6_1_bildgalerie/features/profile/screens/profile.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/data/gallery_repo.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});
  final GalleryRepo galleryRepo = GalleryRepo();
  final ProfileRepo profileRepo = ProfileRepo();

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      GalleryScreen(
        galleryRepo: widget.galleryRepo,
      ),
      Profile(
        profileRepo: widget.profileRepo,
      )
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
      title: "Gallerie App",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.teal,
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.photo_size_select_actual_rounded,
                ),
                label: "Bilder"),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: "Über mich",
            )
          ],
          onDestinationSelected: (value) {
            _onDestinationSelected(value);
          },
          indicatorColor: Colors.blue.shade100,
          selectedIndex: _selectedIndex,
        ),
        body: Center(
          child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.teal,
                ],
              )),
              child: _screens[_selectedIndex]),
        ),
        appBar: AppBar(
          title: Text("Gallerie App"),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
