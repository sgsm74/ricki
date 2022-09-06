import 'package:dartz/dartz.dart';

import 'package:ricki/core/utils/usecase.dart';
import 'package:ricki/rickandmorty/domain/entities/episode_entity.dart';
import 'package:ricki/rickandmorty/domain/respositories/repository.dart';

class GetEpisodesUseCase
    implements UseCase<List<EpisodeEntity>, GetByIdListParams> {
  const GetEpisodesUseCase({
    required this.repository,
  });

  final Repository repository;

  @override
  Future<Either<Exception, List<EpisodeEntity>>> call(
          GetByIdListParams params) async =>
      await repository.getEpisodes(params.ids);
}
