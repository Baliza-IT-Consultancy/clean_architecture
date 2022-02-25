import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/configs/app_configs.dart';
import '../../../../core/constants/constraints/constraints.dart';
import '../../../shared/auth/presentation/blocs/auth_bloc/auth_bloc.dart';

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
        title: Text(localization.appName),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.loggedOut());
            },
            tooltip: localization.logout,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text("${index + 1}."),
            title: Text('Item $index'),
            subtitle: const Text('Subtitle'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          );
        },
        prototypeItem: const ListTile(
          leading: Text("0"),
          title: Text('Item 0'),
          subtitle: Text('Subtitle'),
          trailing: Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}
