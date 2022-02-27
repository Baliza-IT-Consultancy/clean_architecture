import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

/// Global Service Locator
final sl = GetIt.instance;

@InjectableInit(
  initializerName: r'$initSL', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)

/// configure all the dependencies using service location
void configureDependencies({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) =>
    $initSL(
      sl,
      environment: environment ?? Environment.dev,
      environmentFilter: environmentFilter,
    );
