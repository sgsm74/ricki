import 'package:dartz/dartz.dart';

import '../entities/character_entity.dart';
import '../entities/episode_entity.dart';
import '../entities/location_entity.dart';

abstract class Repository {
  Future<Either<Exception, List<CharacterEntity>>> characters();
  Future<Either<Exception, CharacterEntity>> getCharacter(int id);
  Future<Either<Exception, List<CharacterEntity>>> getCharacters(List<int> ids);
  Future<Either<Exception, List<CharacterEntity>>> filterCharacters();

  Future<Either<Exception, List<EpisodeEntity>>> episodes();
  Future<Either<Exception, EpisodeEntity>> getEpisode(int id);
  Future<Either<Exception, List<EpisodeEntity>>> getEpisodes(List<int> ids);
  Future<Either<Exception, List<EpisodeEntity>>> filterEpisodes();

  Future<Either<Exception, List<LocationEntity>>> locations();
  Future<Either<Exception, LocationEntity>> getLocation(int id);
  Future<Either<Exception, List<LocationEntity>>> getLocations(List<int> ids);
  Future<Either<Exception, List<LocationEntity>>> filterLocations();
}
