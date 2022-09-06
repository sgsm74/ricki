import 'package:dartz/dartz.dart';
import 'package:ricki/core/utils/network_utils.dart';

import 'package:ricki/rickandmorty/data/datasources/remote_datasource.dart';
import 'package:ricki/rickandmorty/domain/entities/character_entity.dart';
import 'package:ricki/rickandmorty/domain/entities/episode_entity.dart';
import 'package:ricki/rickandmorty/domain/entities/location_entity.dart';
import 'package:ricki/rickandmorty/domain/respositories/repository.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl({
    required this.remoteDataSource,
  });

  final RemoteDataSource remoteDataSource;

  @override
  Future<Either<Exception, List<CharacterEntity>>> characters() async =>
      await requestToServer(() async => await remoteDataSource.characters());

  @override
  Future<Either<Exception, CharacterEntity>> getCharacter(int id) async =>
      await requestToServer(
          () async => await remoteDataSource.getCharacter(id));

  @override
  Future<Either<Exception, List<CharacterEntity>>> getCharacters(
          List<int> ids) async =>
      await requestToServer(
          () async => await remoteDataSource.getCharacters(ids));

  @override
  Future<Either<Exception, List<CharacterEntity>>> filterCharacters() async =>
      await requestToServer(
          () async => await remoteDataSource.filterCharacters());

  @override
  Future<Either<Exception, List<EpisodeEntity>>> episodes() async =>
      await requestToServer(() async => await remoteDataSource.episodes());

  @override
  Future<Either<Exception, EpisodeEntity>> getEpisode(int id) async =>
      await requestToServer(() async => await remoteDataSource.getEpisode(id));

  @override
  Future<Either<Exception, List<EpisodeEntity>>> getEpisodes(
          List<int> ids) async =>
      await requestToServer(
          () async => await remoteDataSource.getEpisodes(ids));

  @override
  Future<Either<Exception, List<EpisodeEntity>>> filterEpisodes() async =>
      await requestToServer(
          () async => await remoteDataSource.filterEpisodes());

  @override
  Future<Either<Exception, List<LocationEntity>>> locations() async =>
      await requestToServer(() async => await remoteDataSource.locations());

  @override
  Future<Either<Exception, LocationEntity>> getLocation(int id) async =>
      await requestToServer(() async => await remoteDataSource.getLocation(id));

  @override
  Future<Either<Exception, List<LocationEntity>>> getLocations(
          List<int> ids) async =>
      await requestToServer(
          () async => await remoteDataSource.getLocations(ids));

  @override
  Future<Either<Exception, List<LocationEntity>>> filterLocations() async =>
      await requestToServer(
          () async => await remoteDataSource.filterLocations());
}
