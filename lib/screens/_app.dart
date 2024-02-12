import 'package:flutter/material.dart';
import 'package:my_note/navigations/route.dart';
import 'package:my_note/theme/theme_config.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: themeConfig,
      debugShowCheckedModeBanner: false,
      routerConfig: routes,
    );
  }
}
