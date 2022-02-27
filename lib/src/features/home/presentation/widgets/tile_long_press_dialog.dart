import 'package:flutter/material.dart';

class TodoTileLongPressDialog extends StatelessWidget {
  const TodoTileLongPressDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('More info'),
    );
  }
}
