import 'package:dartz/dartz.dart';

import 'package:ricki/core/utils/usecase.dart';
import 'package:ricki/rickandmorty/domain/respositories/repository.dart';

import '../../entities/character_entity.dart';

class CharactersUseCase implements UseCase<List<CharacterEntity>, NoParams> {
  const CharactersUseCase({
    required this.repository,
  });

  final Repository repository;

  @override
  Future<Either<Exception, List<CharacterEntity>>> call(
          NoParams params) async =>
      await repository.characters();
}
