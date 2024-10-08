import 'package:flutter/material.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/data/gallery_repo.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/screens/gallery_card.dart';

class Gallery extends StatelessWidget {
  final GalleryRepo galleryRepo;

  Gallery({super.key, required this.galleryRepo});

  @override
  Widget build(BuildContext context) {
    final galleryItems = galleryRepo.getAllGalleryItems();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemCount: galleryItems.length,
          itemBuilder: (context, index) {
            return GalleryCard(galleryItem: galleryItems[index]);
          }),
    );
  }
}
