import 'package:flutter/widgets.dart';

import 'bootstrap.dart';
import 'src/app/app.dart';
import 'src/core/configs/app_configs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // set orientation of the app
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);

  bootstrap(
    () {
      switch (AppConfig.flavor) {
        case AppFlavor.production:
          return const ProdApp();
        case AppFlavor.development:
        default:
          return const DevApp();
      }
    },
    AppConfig.flavor,
  );
}
