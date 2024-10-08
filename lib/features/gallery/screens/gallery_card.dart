import 'package:flutter/material.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/models/gallery_item.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/screens/details.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard({super.key, required this.galleryItem});
  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 120,
          width: 120,
          color: Colors.red,

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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage(galleryItem.imagePath),
                      fit: BoxFit.cover)),
            ),
          ),

          // child: Stack(
          //     //alignment: Alignment.topRight,
          //     children: [
          //       //Image.asset("assets/images/basketball_1.jpeg"),
          //       Image.asset(galleryItem.imagePath),
          //       Positioned(
          //         top: 4,
          //         right: 4,
          //         child: Visibility(
          //           child: Icon(
          //             Icons.favorite_border_rounded,
          //             shadows: [Shadow(color: Colors.grey)],
          //           ),
          //           visible: false,
          //         ),
          //       )
          //     ]),
        ),
      ),
    );
  }
}
