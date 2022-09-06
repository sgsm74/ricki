import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Exception, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

class GetByIdParams extends Equatable {
  const GetByIdParams({
    required this.id,
  });
  final int id;

  @override
  List<Object?> get props => [id];
}

class GetByIdListParams extends Equatable {
  const GetByIdListParams({
    required this.ids,
  });
  final List<int> ids;

  @override
  List<Object?> get props => [ids];
}
