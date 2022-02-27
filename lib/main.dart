import 'package:injectable/injectable.dart';

import 'bootstrap.dart';
import 'src/app/app.dart';

void main() {
  const environment = Environment.dev;

  bootstrap(
    () {
      switch (environment) {
        case Environment.prod:
          return const ProdApp();
        case Environment.dev:
        default:
          return const DevApp();
      }
    },
    environment,
  );
}
