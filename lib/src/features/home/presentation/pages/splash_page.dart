import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/configs/app_configs.dart';
import '../../../../routes/routes.dart';
import '../../../shared/presentation/blocs/app_bloc/app_bloc.dart';

/// {@template splash_page}
/// This page show a loading icon and will be the first one to mount.
///
/// After some time it will redirect to [SplashPage.nextRoute].
/// {@endtemplate}
class SplashPage extends StatelessWidget {
  /// {@macro splash_page}
  const SplashPage({
    Key? key,
    required this.nextRoute,
  }) : super(key: key);

  /// After loading redirect to this url.
  final String nextRoute;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state is AppLoaded) {
          navigator.beamToReplacementNamed(Routes.home);
        }
      },
      child: const Material(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
