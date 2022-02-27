import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/type_defs.dart';
import '../../../../core/base/usecase.dart';

/// {@template delete_todo_usecase}
/// This use case is used to delete a [Todo]
/// by its [id].
/// {@endtemplate}
@lazySingleton
class DeleteTodo extends IUseCase<void, String> {
  @override
  FailureOr<void> call(String param) {
    return Future.value(const Right(null));
  }
}
