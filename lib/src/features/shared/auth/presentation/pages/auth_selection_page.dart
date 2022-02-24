import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/configs/app_configs.dart';
import '../../../../../core/constants/constraints/constraints.dart';
import '../../../../../routes/routes.dart';

/// {@template auth_selection_page}
/// A Page that gives user option to select whether they want to login or
/// create a new account.
/// {@endtemplate}
class AuthSelectionPage extends StatelessWidget {
  /// {@macro auth_selection_page}
  const AuthSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Welcome to",
              style: textTheme.headline4,
            ),
            Text(
              "TODO",
              style: textTheme.headline1,
            ),
            Text(
              "Login to access your account.",
              style: textTheme.titleSmall,
            ),
            const Gap(AppConstraints.mediumGap),
            ElevatedButton(
                onPressed: () => navigator.beamToNamed(Routes.login),
                child: const Text("Login")),
            const Gap(AppConstraints.mediumGap),
            Text(
              "or Are you a new user?",
              style: textTheme.titleSmall,
            ),
            const Gap(AppConstraints.mediumGap),
            ElevatedButton(
              onPressed: () => navigator.beamToNamed(Routes.signup),
              child: const Text("Create Account"),
            ),
          ],
        ),
      ),
    );
  }
}
