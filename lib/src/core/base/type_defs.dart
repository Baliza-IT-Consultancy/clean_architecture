import 'package:dartz/dartz.dart';

import '../error/failures.dart';

/// A function that returns a [Either] of type [T]
typedef FailureOr<T> = Future<Either<Failure, T>>;

/// A Sync variant of [RepositoryOutput<T>]
///
/// A function that returns a [Either] of type [T]
typedef FailureOrSync<T> = Either<Failure, T>;
