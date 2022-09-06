part of 'ricki_bloc.dart';

abstract class RickiState extends Equatable {
  const RickiState();

  @override
  List<Object> get props => [];
}

class RickiInitial extends RickiState {}

class LoadingState extends RickiState {}

class ErrorState extends RickiState {
  const ErrorState({
    required this.message,
  });

  final String message;

  @override
  List<Object> get props => [message];
}

//Character States
//////////////////
class CharactersSuccessfulState extends RickiState {
  const CharactersSuccessfulState({
    required this.characters,
  });
  final List<CharacterEntity> characters;

  @override
  List<Object> get props => [characters];
}

class GetCharacterSuccessfulState extends RickiState {
  const GetCharacterSuccessfulState({
    required this.character,
  });
  final CharacterEntity character;

  @override
  List<Object> get props => [character];
}

class GetCharactersSuccessfulState extends RickiState {
  const GetCharactersSuccessfulState({
    required this.characters,
  });
  final List<CharacterEntity> characters;

  @override
  List<Object> get props => [characters];
}

class FilterCharactersSuccessfulState extends RickiState {
  const FilterCharactersSuccessfulState({
    required this.characters,
  });
  final List<CharacterEntity> characters;

  @override
  List<Object> get props => [characters];
}

//Episode States
//////////////////
class EpisodesSuccessfulState extends RickiState {
  const EpisodesSuccessfulState({
    required this.episodes,
  });
  final List<EpisodeEntity> episodes;

  @override
  List<Object> get props => [episodes];
}

class GetEpisodeSuccessfulState extends RickiState {
  const GetEpisodeSuccessfulState({
    required this.episode,
  });
  final EpisodeEntity episode;

  @override
  List<Object> get props => [episode];
}

class GetEpisodesSuccessfulState extends RickiState {
  const GetEpisodesSuccessfulState({
    required this.episodes,
  });
  final List<EpisodeEntity> episodes;

  @override
  List<Object> get props => [episodes];
}

class FilterEpisodesSuccessfulState extends RickiState {
  const FilterEpisodesSuccessfulState({
    required this.episodes,
  });
  final List<EpisodeEntity> episodes;

  @override
  List<Object> get props => [episodes];
}

//Location States
//////////////////
class LocationsSuccessfulState extends RickiState {
  const LocationsSuccessfulState({
    required this.locations,
  });
  final List<LocationEntity> locations;

  @override
  List<Object> get props => [locations];
}

class GetLocationSuccessfulState extends RickiState {
  const GetLocationSuccessfulState({
    required this.location,
  });
  final LocationEntity location;

  @override
  List<Object> get props => [location];
}

class GetLocationsSuccessfulState extends RickiState {
  const GetLocationsSuccessfulState({
    required this.locations,
  });
  final List<LocationEntity> locations;

  @override
  List<Object> get props => [locations];
}

class FilterLocationsSuccessfulState extends RickiState {
  const FilterLocationsSuccessfulState({
    required this.locations,
  });
  final List<LocationEntity> locations;

  @override
  List<Object> get props => [locations];
}
