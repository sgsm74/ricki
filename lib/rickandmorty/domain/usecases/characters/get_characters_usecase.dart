import 'package:dartz/dartz.dart';

import 'package:ricki/core/utils/usecase.dart';
import 'package:ricki/rickandmorty/domain/respositories/repository.dart';

import '../../entities/character_entity.dart';

class GetCharactersUseCase
    implements UseCase<List<CharacterEntity>, GetByIdListParams> {
  const GetCharactersUseCase({
    required this.repository,
  });

  final Repository repository;

  @override
  Future<Either<Exception, List<CharacterEntity>>> call(
          GetByIdListParams params) async =>
      await repository.getCharacters(params.ids);
}
