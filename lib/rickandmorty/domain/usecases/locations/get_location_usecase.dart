import 'package:dartz/dartz.dart';

import 'package:ricki/core/utils/usecase.dart';
import 'package:ricki/rickandmorty/domain/entities/location_entity.dart';
import 'package:ricki/rickandmorty/domain/respositories/repository.dart';

class GetLocationUseCase implements UseCase<LocationEntity, GetByIdParams> {
  const GetLocationUseCase({
    required this.repository,
  });

  final Repository repository;

  @override
  Future<Either<Exception, LocationEntity>> call(GetByIdParams params) async =>
      await repository.getLocation(params.id);
}
