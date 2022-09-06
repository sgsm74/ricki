import 'package:dartz/dartz.dart';

import 'package:ricki/core/utils/usecase.dart';
import 'package:ricki/rickandmorty/domain/entities/episode_entity.dart';
import 'package:ricki/rickandmorty/domain/respositories/repository.dart';

class EpisodesUseCase implements UseCase<List<EpisodeEntity>, NoParams> {
  const EpisodesUseCase({
    required this.repository,
  });

  final Repository repository;

  @override
  Future<Either<Exception, List<EpisodeEntity>>> call(NoParams params) async =>
      await repository.episodes();
}
