import 'package:injectable/injectable.dart';

/// To Register third party types like SharedPreference, Dio, etc.
///
/// learn more about it here
/// [https://pub.dev/packages/injectable#providing-custom-initializers]
@module
abstract class RegisterModule {
  /// TODO: remove this when you start using the real services
  ///
  /// Examples
  ///
  /// @singleton
  /// ThirdPartyType get thirdPartyType;
  ///
  /// @prod
  /// @Injectable(as: ThirdPartyAbstract)
  /// ThirdPartyImpl get thirdPartyType;
}
