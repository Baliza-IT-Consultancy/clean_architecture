import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection/injection.dart';
import '../presentation/blocs/todo_bloc/todo_bloc.dart';
import '../presentation/blocs/todo_filter/todo_filter_bloc.dart';
import '../presentation/pages/home_page.dart';
import '../presentation/pages/splash_page.dart';

/// Home Route of the app
///
/// This route will the first to mount in the app.
class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final path = state.uri.path;
    return [
      if (path != '/home')
        const BeamPage(
          key: ValueKey("Splash Page"),
          name: 'Splash',
          title: 'Splash Page',
          child: SplashPage(nextRoute: '/home'),
        ),
      if (path == '/home')
        BeamPage(
          key: const ValueKey("Home Page"),
          name: 'Home',
          title: 'Home Page',
          child: MultiBlocProvider(
            providers: [
              BlocProvider<TodoBloc>(
                create: (context) => sl()..add(const TodoEvent.load()),
              ),
              BlocProvider<TodoFilterBloc>(
                create: (context) => sl(),
              ),
            ],
            child: const HomePage(),
          ),
        ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => [
        '/',
        '/home',
      ];
}
