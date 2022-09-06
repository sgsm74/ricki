import 'package:dartz/dartz.dart';

import 'package:ricki/core/utils/usecase.dart';
import 'package:ricki/rickandmorty/domain/respositories/repository.dart';

import '../../entities/character_entity.dart';

class GetCharacterUseCase implements UseCase<CharacterEntity, GetByIdParams> {
  const GetCharacterUseCase({
    required this.repository,
  });

  final Repository repository;

  @override
  Future<Either<Exception, CharacterEntity>> call(GetByIdParams params) async =>
      await repository.getCharacter(params.id);
}
