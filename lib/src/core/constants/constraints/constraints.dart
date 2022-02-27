import 'package:flutter/material.dart';

import '../../../features/home/domain/entities/todo.dart';

/// Contains constraints for the app.
abstract class AppConstraints {
  AppConstraints._();

  /// The smallest size the space between the elements.
  ///
  /// `equals to 5.0`
  static const smallSpace = 5.0;

  /// The medium size the space between the elements.
  ///
  /// `equals to 10.0`
  static const mediumSpace = 10.0;

  /// The large size the space between the elements.
  ///
  /// `equals to 15.0`
  static const largeSpace = 15.0;

  /// The extra large size the space between the elements.
  ///
  /// `equals to 20.0`
  static const extraLargeSpace = 20.0;

  /// This is the maximum width a [TextField] or [TextFormField]
  /// can take.
  static const double maxTextFieldWidth = 300.0;

  /// This is border radius of [TextField] or [TextFormField]
  static const double inputFieldOutlineBorderRadius = 10.0;

  /// This is maximum length of a [Todo] title.
  static const int maxTodoTitleLength = 40;

  /// This is maximum length of a [Todo] description.
  static const int maxTodoDescriptionLength = 40;
}
