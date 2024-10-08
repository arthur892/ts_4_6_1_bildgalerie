import 'package:flutter/material.dart';
import 'package:ts_4_6_1_bildgalerie/gallery/screens/gallery.dart';
import 'package:ts_4_6_1_bildgalerie/profile/screens/profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Widget> _widgets = [Gallery(), Profile()];
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
        body: _widgets[_selectedIndex],
        appBar: AppBar(
          title: Text("AppBar"),
        ),
      ),
    );
  }
}
