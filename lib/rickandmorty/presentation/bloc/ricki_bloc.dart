import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ricki/core/utils/usecase.dart';
import 'package:ricki/rickandmorty/domain/entities/character_entity.dart';
import 'package:ricki/rickandmorty/domain/entities/episode_entity.dart';
import 'package:ricki/rickandmorty/domain/entities/location_entity.dart';
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

part 'ricki_event.dart';
part 'ricki_state.dart';

class RickiBloc extends Bloc<RickiEvent, RickiState> {
  final CharactersUseCase charactersUseCase;
  final GetCharacterUseCase getCharacterUseCase;
  final GetCharactersUseCase getCharactersUseCase;
  final FilterCharactersUseCase filterCharactersUseCase;

  final EpisodesUseCase episodesUseCase;
  final GetEpisodeUseCase getEpisodeUseCase;
  final GetEpisodesUseCase getEpisodesUseCase;
  final FilterEpisodesUseCase filterEpisodesUseCase;

  final LocationsUseCase locationsUseCase;
  final GetLocationUseCase getLocationUseCase;
  final GetLocationsUseCase getLocationsUseCase;
  final FilterLocationsUseCase filterLocationsUseCase;

  RickiBloc({
    required this.charactersUseCase,
    required this.getCharacterUseCase,
    required this.getCharactersUseCase,
    required this.filterCharactersUseCase,
    required this.episodesUseCase,
    required this.getEpisodeUseCase,
    required this.getEpisodesUseCase,
    required this.filterEpisodesUseCase,
    required this.locationsUseCase,
    required this.getLocationUseCase,
    required this.getLocationsUseCase,
    required this.filterLocationsUseCase,
  }) : super(RickiInitial()) {
    on<RickiEvent>((event, emit) async {
      if (event is CharactersEvent) {
        await _onCharactersEvent(event, emit);
      } else if (event is GetCharacterEvent) {
        await _onGetCharacterEvent(event, emit);
      } else if (event is GetCharactersEvent) {
        await _onGetCharactersEvent(event, emit);
      } else if (event is FilterCharactersEvent) {
        await _onFilterCharactersEvent(event, emit);
      } else if (event is EpisodesEvent) {
        await _onEpisodesEvent(event, emit);
      } else if (event is GetEpisodeEvent) {
        await _onGetEpisodeEvent(event, emit);
      } else if (event is GetEpisodesEvent) {
        await _onGetEpisodesEvent(event, emit);
      } else if (event is FilterEpisodesEvent) {
        await _onFilterEpisodesEvent(event, emit);
      } else if (event is LocationsEvent) {
        await _onLocationsEvent(event, emit);
      } else if (event is GetLocationEvent) {
        await _onGetLocationEvent(event, emit);
      } else if (event is GetLocationsEvent) {
        await _onGetLocationsEvent(event, emit);
      } else if (event is FilterLocationsEvent) {
        await _onFilterLocationsEvent(event, emit);
      }
    });
  }

  FutureOr<void> _onCharactersEvent(
      CharactersEvent event, Emitter<RickiState> emit) async {
    emit(LoadingState());
    final result = await charactersUseCase(NoParams());
    emit(result.fold((error) => ErrorState(message: error.toString()),
        (characters) => CharactersSuccessfulState(characters: characters)));
  }

  FutureOr<void> _onGetCharacterEvent(
      GetCharacterEvent event, Emitter<RickiState> emit) async {
    emit(LoadingState());
    final result = await getCharacterUseCase(GetByIdParams(id: event.id));
    emit(result.fold((error) => ErrorState(message: error.toString()),
        (character) => GetCharacterSuccessfulState(character: character)));
  }

  FutureOr<void> _onGetCharactersEvent(
      GetCharactersEvent event, Emitter<RickiState> emit) async {
    emit(LoadingState());
    final result =
        await getCharactersUseCase(GetByIdListParams(ids: event.ids));
    emit(result.fold((error) => ErrorState(message: error.toString()),
        (characters) => GetCharactersSuccessfulState(characters: characters)));
  }

  FutureOr<void> _onFilterCharactersEvent(
      FilterCharactersEvent event, Emitter<RickiState> emit) async {
    emit(LoadingState());
    final result = await filterCharactersUseCase(NoParams());
    emit(result.fold(
        (error) => ErrorState(message: error.toString()),
        (characters) =>
            FilterCharactersSuccessfulState(characters: characters)));
  }

  FutureOr<void> _onEpisodesEvent(
      EpisodesEvent event, Emitter<RickiState> emit) async {
    emit(LoadingState());
    final result = await episodesUseCase(NoParams());
    emit(result.fold((error) => ErrorState(message: error.toString()),
        (episodes) => EpisodesSuccessfulState(episodes: episodes)));
  }

  FutureOr<void> _onGetEpisodeEvent(
      GetEpisodeEvent event, Emitter<RickiState> emit) async {
    emit(LoadingState());
    final result = await getEpisodeUseCase(GetByIdParams(id: event.id));
    emit(result.fold((error) => ErrorState(message: error.toString()),
        (episode) => GetEpisodeSuccessfulState(episode: episode)));
  }

  FutureOr<void> _onGetEpisodesEvent(
      GetEpisodesEvent event, Emitter<RickiState> emit) async {
    emit(LoadingState());
    final result = await getEpisodesUseCase(GetByIdListParams(ids: event.ids));
    emit(result.fold((error) => ErrorState(message: error.toString()),
        (episodes) => GetEpisodesSuccessfulState(episodes: episodes)));
  }

  FutureOr<void> _onFilterEpisodesEvent(
      FilterEpisodesEvent event, Emitter<RickiState> emit) async {
    emit(LoadingState());
    final result = await filterEpisodesUseCase(NoParams());
    emit(result.fold((error) => ErrorState(message: error.toString()),
        (episodes) => FilterEpisodesSuccessfulState(episodes: episodes)));
  }

  FutureOr<void> _onLocationsEvent(
      LocationsEvent event, Emitter<RickiState> emit) async {
    emit(LoadingState());
    final result = await locationsUseCase(NoParams());
    emit(result.fold((error) => ErrorState(message: error.toString()),
        (locations) => LocationsSuccessfulState(locations: locations)));
  }

  FutureOr<void> _onGetLocationEvent(
      GetLocationEvent event, Emitter<RickiState> emit) async {
    emit(LoadingState());
    final result = await getLocationUseCase(GetByIdParams(id: event.id));
    emit(result.fold((error) => ErrorState(message: error.toString()),
        (location) => GetLocationSuccessfulState(location: location)));
  }

  FutureOr<void> _onGetLocationsEvent(
      GetLocationsEvent event, Emitter<RickiState> emit) async {
    emit(LoadingState());
    final result = await getLocationsUseCase(GetByIdListParams(ids: event.ids));
    emit(result.fold((error) => ErrorState(message: error.toString()),
        (locations) => GetLocationsSuccessfulState(locations: locations)));
  }

  FutureOr<void> _onFilterLocationsEvent(
      FilterLocationsEvent event, Emitter<RickiState> emit) async {
    emit(LoadingState());
    final result = await filterLocationsUseCase(NoParams());
    emit(result.fold((error) => ErrorState(message: error.toString()),
        (locations) => FilterLocationsSuccessfulState(locations: locations)));
  }
}
