import 'package:flutter/material.dart';

class FormNote extends StatefulWidget {
  const FormNote({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FormNoteState();
  }
}

class _FormNoteState extends State<FormNote> {
  final List<TextEditingController> _textEditingControllers = [
    TextEditingController(),
    TextEditingController()
  ];

  @override
  void initState() {
    super.initState();

    _textEditingControllers[0].addListener(_showLatestValue);
    _textEditingControllers[1].addListener(_showLatestValue);
  }

  @override
  void dispose() {
    _textEditingControllers[0].dispose();
    _textEditingControllers[1].dispose();
    super.dispose();
  }

  void _showLatestValue() {
    final title = _textEditingControllers[0].text;
    final description = _textEditingControllers[1].text;
    print(title);
    print(description);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _textEditingControllers[0],
              decoration: const InputDecoration(
                  label: Text("Title"), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              controller: _textEditingControllers[1],
              decoration: const InputDecoration(
                  label: Text("Description"), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ]),
    );
  }
}
