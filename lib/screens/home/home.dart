import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_note/navigations/route_name.dart';
import 'package:my_note/widgets/card_note.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: const Text("My Note")),
          body: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
                children: List.generate(20, (index) {
              return const CardNote();
            })),
          )),
          floatingActionButton: FloatingActionButton(
            onPressed: () => context.push(RouteName.addNoteRoute),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          )),
    );
  }
}
