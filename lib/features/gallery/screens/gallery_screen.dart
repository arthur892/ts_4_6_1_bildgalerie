import 'package:flutter/material.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/data/gallery_repo.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/models/gallery_item.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/screens/gallery_grid.dart';
import 'package:ts_4_6_1_bildgalerie/features/gallery/screens/gallery_list.dart';

class GalleryScreen extends StatefulWidget {
  final GalleryRepo galleryRepo;

  const GalleryScreen({super.key, required this.galleryRepo});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  bool isListView = true;
  @override
  Widget build(BuildContext context) {
    final List<GalleryItem> galleryItems =
        widget.galleryRepo.getAllGalleryItems();

    // return Column(
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.end,
    //       children: [
    //         IconButton(
    //             onPressed: () {
    //               setState(() {
    //                 isListView = !isListView;
    //               });
    //             },
    //             icon: Icon(isListView ? Icons.grid_view : Icons.list))
    //       ],
    //     ),
    //     Expanded(
    //         child: isListView
    //             ? buildListView(galleryItems)
    //             : buildGridView(galleryItems))
    //   ],
    // );
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           setState(() {
      //             isListView = !isListView;
      //           });
      //         },
      //         icon: Icon(isListView ? Icons.grid_view : Icons.list))
      //   ],
      // ),
      floatingActionButton: IconButton(
        onPressed: () {
          setState(() {
            isListView = !isListView;
          });
        },
        icon: Icon(isListView ? Icons.grid_view : Icons.list),
        color: Colors.white,
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
            child: isListView
                ? buildListView(galleryItems)
                : buildGridView(galleryItems)),
      ),

      //backgroundColor: Colors.blue,
    );
  }
}

Widget buildGridView(List<GalleryItem> galleryItems) {
  //final galleryItems = galleryRepo.getAllGalleryItems();
  return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
      ),
      itemCount: galleryItems.length,
      itemBuilder: (context, index) {
        return GalleryGridCard(galleryItem: galleryItems[index]);
      });
}

Widget buildListView(List<GalleryItem> galleryItems) {
  //final galleryItems = galleryRepo.getAllGalleryItems();
  return ListView.builder(
      // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 4,
      //   mainAxisSpacing: 4,
      // ),

      itemCount: galleryItems.length,
      itemBuilder: (context, index) {
        //print(galleryItems.length);
        return GalleryListCard(galleryItem: galleryItems[index]);
      });
}
