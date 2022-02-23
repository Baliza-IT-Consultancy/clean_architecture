import 'package:flutter/material.dart';

///{@template not_found_page}
///This page is shown when the intended route isn't found by the navigator.
///{@endtemplate}
class NotFoundPage extends StatelessWidget {
  ///{@macro not_found_page}

  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Page not found"),
      ),
    );
  }
}
