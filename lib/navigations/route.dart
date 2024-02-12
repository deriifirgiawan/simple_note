import 'package:go_router/go_router.dart';
import 'package:my_note/navigations/route_name.dart';
import 'package:my_note/screens/addNote/add_note.dart';
import 'package:my_note/screens/home/home.dart';

final GoRouter routes = GoRouter(initialLocation: RouteName.homeRoute, routes: [
  GoRoute(
    path: RouteName.homeRoute,
    builder: (context, state) => const Home(),
  ),
  GoRoute(
    path: RouteName.addNoteRoute,
    builder: (context, state) => const AddNote(),
  ),
]);
