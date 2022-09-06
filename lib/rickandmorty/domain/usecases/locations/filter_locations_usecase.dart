import 'package:dartz/dartz.dart';

import 'package:ricki/core/utils/usecase.dart';
import 'package:ricki/rickandmorty/domain/entities/location_entity.dart';
import 'package:ricki/rickandmorty/domain/respositories/repository.dart';

class FilterLocationsUseCase
    implements UseCase<List<LocationEntity>, NoParams> {
  const FilterLocationsUseCase({
    required this.repository,
  });

  final Repository repository;

  @override
  Future<Either<Exception, List<LocationEntity>>> call(NoParams params) async =>
      await repository.filterLocations();
}
