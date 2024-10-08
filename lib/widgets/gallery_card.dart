import 'package:flutter/material.dart';

class CardGallery extends StatelessWidget {
  const CardGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                //alignment: Alignment.topRight,

                children: [
                  Container(
                    height: 120,
                    width: 120,
                    color: Colors.red,
                  ),
                  const Positioned(
                      top: 4,
                      right: 4,
                      child: Icon(Icons.favorite_border_rounded))
                ]),
            const SizedBox(
              height: 8,
              width: 8,
            ),
            const Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Titel"),
                Text("Datum"),
                Text("Beschreibung"),
                //Text("Dauer"),
                //Text("Rezessionen"),
                //Text("Preis")
              ],
            )
          ],
        ),
      ),
    );
  }
}
