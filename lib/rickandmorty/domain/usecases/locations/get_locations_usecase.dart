import 'package:dartz/dartz.dart';

import 'package:ricki/core/utils/usecase.dart';
import 'package:ricki/rickandmorty/domain/entities/location_entity.dart';
import 'package:ricki/rickandmorty/domain/respositories/repository.dart';

class GetLocationsUseCase
    implements UseCase<List<LocationEntity>, GetByIdListParams> {
  const GetLocationsUseCase({
    required this.repository,
  });

  final Repository repository;

  @override
  Future<Either<Exception, List<LocationEntity>>> call(
          GetByIdListParams params) async =>
      await repository.getLocations(params.ids);
}
