import 'package:flutter/widgets.dart';

import 'bootstrap.dart';
import 'src/app/app.dart';
import 'src/core/configs/app_configs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  bootstrap(() {
    switch (AppConfig.flavor) {
      case AppFlavor.production:
        return const ProdApp();
      case AppFlavor.development:
      default:
        return const DevApp();
    }
  });
}
