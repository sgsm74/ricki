import 'package:dartz/dartz.dart';

import 'package:ricki/core/utils/usecase.dart';
import 'package:ricki/rickandmorty/domain/entities/episode_entity.dart';
import 'package:ricki/rickandmorty/domain/respositories/repository.dart';

class GetEpisodeUseCase implements UseCase<EpisodeEntity, GetByIdParams> {
  const GetEpisodeUseCase({
    required this.repository,
  });

  final Repository repository;

  @override
  Future<Either<Exception, EpisodeEntity>> call(GetByIdParams params) async =>
      await repository.getEpisode(params.id);
}
