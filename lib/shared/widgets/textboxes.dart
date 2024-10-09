import 'package:flutter/material.dart';

class TextRounded extends StatelessWidget {
  const TextRounded(
      {super.key,
      required this.text,
      this.color = const Color.fromRGBO(44, 62, 80, 0.6),
      this.textColor = Colors.white});
  final String text;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    //Color color = Color.fromRGBO(44, 62, 80, 0.6);
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
          color: color,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          )),
    );
  }
}

class TextBoxLabel extends StatelessWidget {
  const TextBoxLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Default TextField',
            ),
          ),
          SizedBox(
            height: 16,
          ),
          // TextField(
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(),
          //     labelText: 'Densed TextField',
          //     isDense: true, // Added this
          //   ),
          // ),
          // SizedBox(
          //   height: 16,
          // ),
          // TextField(
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(),
          //     labelText: 'Even Densed TextFiled',
          //     isDense: true, // Added this
          //     contentPadding: EdgeInsets.all(8), // Added this
          //   ),
          // )
        ],
      ),
    );
  }
}
