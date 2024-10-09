import 'package:flutter/material.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/models/gallery_item.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/screens/details.dart';

class GalleryGridCard extends StatelessWidget {
  const GalleryGridCard({super.key, required this.galleryItem});
  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Details(
                        galleryItem: galleryItem,
                      )));
        },
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(galleryItem.imagePath), fit: BoxFit.cover)),
        ),
      ),
    );
    //),
    //);
  }
}
