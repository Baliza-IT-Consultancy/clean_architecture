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
        child: Padding(
          padding: const EdgeInsets.all(
            AppConstraints.largeSpace,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  localization.welcomeToMessage,
                  style: textTheme.headline4,
                ),
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  localization.appName,
                  style: textTheme.headline1,
                ),
              ),
              const Gap(AppConstraints.mediumSpace),
              ElevatedButton(
                onPressed: () => navigator.beamToNamed(Routes.login),
                child: Text(localization.login),
              ),
              const Gap(AppConstraints.mediumSpace),
              Text(
                localization.newUserText,
                style: textTheme.titleSmall,
              ),
              const Gap(AppConstraints.mediumSpace),
              ElevatedButton(
                onPressed: () => navigator.beamToNamed(Routes.signup),
                child: Text(localization.createAccount),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
