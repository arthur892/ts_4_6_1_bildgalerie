import 'package:flutter/material.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/models/gallery_item.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/screens/details.dart';

class GalleryListCard extends StatelessWidget {
  const GalleryListCard({super.key, required this.galleryItem});
  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Details(
                      galleryItem: galleryItem,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            height: 132,
            color: const Color.fromRGBO(44, 62, 80, 0.6),
            child: Row(
              children: [
                Container(
                  width: 132,
                  height: 132,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage(galleryItem.imagePath),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Text(""),
                      Text(
                        galleryItem.imageTitle,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        galleryItem.imageDate,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        galleryItem.imageLocation,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        galleryItem.resolution,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        galleryItem.fileSize,
                        style: TextStyle(color: Colors.white),
                      ),
                      //Text(galleryItem.imageDescription)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
