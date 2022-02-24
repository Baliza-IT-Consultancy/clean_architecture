import 'package:flutter/material.dart';

///{@template not_found_page}
/// Page that represent those routes which doesn't exists.
/// It's used to handle 404 errors.
/// {@endtemplate}
class NotFoundPage extends StatelessWidget {
  /// {@macro not_found_page}
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not Found'),
      ),
      body: const Center(
        child: Text("Page Not Found"),
      ),
    );
  }
}
