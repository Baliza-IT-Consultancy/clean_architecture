import 'package:flutter/material.dart';

import '../../../../core/configs/app_configs.dart';

/// {@template home_page}
/// Home page
///
/// This page shows an infinitely scrollable list of todos
/// and a button to create new todo.
///
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.title),
      ),
      body: const Text("Hello World"),
    );
  }
}
