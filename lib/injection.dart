import 'package:get_it/get_it.dart';
import 'package:ricki/rickandmorty/data/datasources/remote_datasource.dart';
import 'package:ricki/rickandmorty/data/repositories/repository_impl.dart';
import 'package:ricki/rickandmorty/domain/respositories/repository.dart';
import 'package:ricki/rickandmorty/domain/usecases/characters/characters_usecase.dart';
import 'package:ricki/rickandmorty/domain/usecases/characters/filter_characters_usecase.dart';
import 'package:ricki/rickandmorty/domain/usecases/characters/get_character_usecase.dart';
import 'package:ricki/rickandmorty/domain/usecases/characters/get_characters_usecase.dart';
import 'package:ricki/rickandmorty/domain/usecases/episodes/episodes_usecase.dart';
import 'package:ricki/rickandmorty/domain/usecases/episodes/filter_episodes_usecase.dart';
import 'package:ricki/rickandmorty/domain/usecases/episodes/get_episode_usecase.dart';
import 'package:ricki/rickandmorty/domain/usecases/episodes/get_episodes_usecase.dart';
import 'package:ricki/rickandmorty/domain/usecases/locations/filter_locations_usecase.dart';
import 'package:ricki/rickandmorty/domain/usecases/locations/get_location_usecase.dart';
import 'package:ricki/rickandmorty/domain/usecases/locations/get_locations_usecase.dart';
import 'package:ricki/rickandmorty/domain/usecases/locations/locations_usecase.dart';
import 'package:ricki/rickandmorty/presentation/bloc/ricki_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  //bloc injection
  serviceLocator.registerFactory(() => RickiBloc(
        charactersUseCase: serviceLocator(),
        getCharacterUseCase: serviceLocator(),
        getCharactersUseCase: serviceLocator(),
        filterCharactersUseCase: serviceLocator(),
        episodesUseCase: serviceLocator(),
        getEpisodeUseCase: serviceLocator(),
        getEpisodesUseCase: serviceLocator(),
        filterEpisodesUseCase: serviceLocator(),
        locationsUseCase: serviceLocator(),
        getLocationUseCase: serviceLocator(),
        getLocationsUseCase: serviceLocator(),
        filterLocationsUseCase: serviceLocator(),
      ));
  //use cases
  serviceLocator.registerLazySingleton(
      () => CharactersUseCase(repository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => GetCharacterUseCase(repository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => GetCharactersUseCase(repository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => FilterCharactersUseCase(repository: serviceLocator()));

  serviceLocator.registerLazySingleton(
      () => EpisodesUseCase(repository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => GetEpisodeUseCase(repository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => GetEpisodesUseCase(repository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => FilterEpisodesUseCase(repository: serviceLocator()));

  serviceLocator.registerLazySingleton(
      () => LocationsUseCase(repository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => GetLocationUseCase(repository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => GetLocationsUseCase(repository: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => FilterLocationsUseCase(repository: serviceLocator()));

  //repositories
  serviceLocator.registerLazySingleton<Repository>(
      () => RepositoryImpl(remoteDataSource: serviceLocator()));

  //data source
  serviceLocator.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(httpService: serviceLocator()));
}
