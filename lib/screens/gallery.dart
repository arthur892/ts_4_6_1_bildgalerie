import 'package:flutter/material.dart';
import 'package:ts_4_6_1_bildgalerie/widgets/gallery_card.dart';

class Gallery extends StatelessWidget {
  Gallery({super.key});

  final List<Widget> _entries = [CardGallery(), CardGallery()];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          //gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: _entries.length,
          itemBuilder: (context, index) {
            return _entries[index];
          }),
    );
  }
}
