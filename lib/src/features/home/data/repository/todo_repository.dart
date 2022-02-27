import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/type_defs.dart';
import '../../../../core/device/network/network_info.dart';
import '../../../../core/error/exception_to_failure_mapper.dart';
import '../../domain/dtos/todo_dtos.dart';
import '../../domain/entities/todo.dart';
import '../../domain/repositories/todo_repository.dart';
import '../sources/todo_source/local_source.dart';

/// {@template todo_repository_impl}
/// A Concrete implementation of [TodoRepository]
///
/// This class is responsible for managing the persistence of [Todo] objects
/// in both local and remote storage.
/// {@endtemplate}
@LazySingleton(as: ITodoRepository)
class TodoRepository implements ITodoRepository {
  /// {@macro todo_repository_impl}
  const TodoRepository(
    this._networkInfo,
    this._localSource,
  );

  final INetworkInfo _networkInfo;
  final LocalTodoSource _localSource;

  @override
  FailureOr<Todo> addUpdateTodo(TodoDTO todo) async {
    try {
      await _networkInfo.checkConnection();

      late Todo result;
      if (todo.id == null) {
        result = await _localSource.createTodo(todo);
      } else {
        result = await _localSource.updateTodo(todo);
      }
      return Right(result);
    } catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  FailureOr<void> deleteTodo(String id) async {
    try {
      await _networkInfo.checkConnection();

      await _localSource.deleteTodo(id);

      return const Right(null);
    } catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  FailureOr<List<Todo>> getAllTodos() async {
    try {
      await _networkInfo.checkConnection();

      final result = await _localSource.getTodos();

      return Right(result);
    } catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
