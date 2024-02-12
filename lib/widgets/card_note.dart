import 'package:flutter/material.dart';

class CardNote extends StatelessWidget {
  const CardNote({super.key});

  @override
  Widget build(BuildContext context) {
    const styleTitle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    const styleDescription =
        TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
    return const Card(
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "My Note App",
                  style: styleTitle,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: styleDescription,
                    maxLines: 2,
                  ),
                )
              ],
            )));
  }
}
