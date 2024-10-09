import 'package:flutter/material.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/models/gallery_item.dart';
import 'package:ts_4_6_1_bildgalerie/shared/widgets/textboxes.dart';

class Details extends StatelessWidget {
  final GalleryItem galleryItem;
  Details({super.key, required this.galleryItem});
  final List<IconData> icons = [
    Icons.library_add,
    Icons.archive,
    Icons.delete,
    Icons.brush
  ];
  final List<String> iconsText = [
    "zu Album\nhinzufügen",
    "Ins Archiv\nverschieben",
    "Löschen",
    "Filter"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(galleryItem.imageTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(galleryItem.imagePath),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 80.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(icons.length, (int index) {
                        return Card(
                          color: Colors.blue[index * 100],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: 80.0,
                                height: 80.0,
                                child: Column(
                                  children: [
                                    Icon(
                                      icons[index],
                                      size: 20,
                                    ),
                                    Text(
                                      iconsText[index],
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                )),
                          ),
                        );
                      }),
                    ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 50,
                          child: TextRounded(text: galleryItem.imageDate),
                        ),
                        Container(
                          height: 50,
                          child: TextRounded(text: galleryItem.imageLocation),
                        ),
                        Container(
                          height: 50,
                          child: TextRounded(text: galleryItem.resolution),
                        ),
                        Container(
                          height: 50,
                          child: TextRounded(text: galleryItem.fileSize),
                        ),
                      ],
                    ),
                    // child: Row(
                    //   children: [
                    //     TextRounded(text: galleryItem.imageDate),
                    //     TextRounded(text: galleryItem.imageLocation),
                    //     TextRounded(text: galleryItem.resolution),
                    //     TextRounded(text: galleryItem.fileSize),
                    //   ],
                    // ),
                  ),
                  const Divider(),
                  TextRounded(
                    text: galleryItem.imageDescription,
                    color: Colors.blue[100]!,
                    textColor: Colors.black,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
