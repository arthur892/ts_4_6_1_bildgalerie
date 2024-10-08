import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Name",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "Jobtitle",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [Text("Beschreibung")],
            ),
          ],
        ),
      ),
    );
  }
}
