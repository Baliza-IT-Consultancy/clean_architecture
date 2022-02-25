import 'package:flutter/material.dart';

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
    return const Material(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
