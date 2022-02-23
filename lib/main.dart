import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import 'bootstrap.dart';
import 'src/app/app.dart';
import 'src/app/injection/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  const environment = Environment.dev;
  configureDependencies(environment: environment);

  bootstrap(() {
    switch (environment) {
      case Environment.prod:
        return const ProdApp();
      case Environment.dev:
      default:
        return const DevApp();
    }
  });
}
