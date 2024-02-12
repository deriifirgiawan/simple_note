import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_note/navigations/route_name.dart';
import 'package:my_note/screens/addNote/widgets/form.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AddNoteState();
  }
}

class _AddNoteState extends State<AddNote> {
  bool _loading = false;

  void _setLoadin(bool value) {
    setState(() {
      _loading = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => context.go(RouteName.homeRoute),
              icon: const Icon(Icons.chevron_left),
              iconSize: 32,
            ),
          ),
          body: FormNote(),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                    onPressed: _loading ? null : () => _setLoadin(!_loading),
                    child: _loading
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text(
                            "Save Note",
                            style: TextStyle(color: Colors.white),
                          ))
              ],
            ),
          )),
    );
  }
}
