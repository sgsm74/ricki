import 'package:dartz/dartz.dart';

import 'package:ricki/core/utils/usecase.dart';
import 'package:ricki/rickandmorty/domain/respositories/repository.dart';

import '../../entities/character_entity.dart';

class FilterCharactersUseCase
    implements UseCase<List<CharacterEntity>, NoParams> {
  const FilterCharactersUseCase({
    required this.repository,
  });

  final Repository repository;

  @override
  Future<Either<Exception, List<CharacterEntity>>> call(
          NoParams params) async =>
      await repository.filterCharacters();
}
