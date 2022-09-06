part of 'ricki_bloc.dart';

abstract class RickiEvent extends Equatable {
  const RickiEvent();

  @override
  List<Object> get props => [];
}

//Character Events
//////////////////
class CharactersEvent extends RickiEvent {}

class GetCharacterEvent extends RickiEvent {
  const GetCharacterEvent({
    required this.id,
  });
  final int id;

  @override
  List<Object> get props => [id];
}

class GetCharactersEvent extends RickiEvent {
  const GetCharactersEvent({
    required this.ids,
  });
  final List<int> ids;

  @override
  List<Object> get props => [ids];
}

class FilterCharactersEvent extends RickiEvent {}

//Episode Events
//////////////////
class EpisodesEvent extends RickiEvent {}

class GetEpisodeEvent extends RickiEvent {
  const GetEpisodeEvent({
    required this.id,
  });
  final int id;

  @override
  List<Object> get props => [id];
}

class GetEpisodesEvent extends RickiEvent {
  const GetEpisodesEvent({
    required this.ids,
  });
  final List<int> ids;

  @override
  List<Object> get props => [ids];
}

class FilterEpisodesEvent extends RickiEvent {}

//Location Events
//////////////////
class LocationsEvent extends RickiEvent {}

class GetLocationEvent extends RickiEvent {
  const GetLocationEvent({
    required this.id,
  });
  final int id;

  @override
  List<Object> get props => [id];
}

class GetLocationsEvent extends RickiEvent {
  const GetLocationsEvent({
    required this.ids,
  });
  final List<int> ids;

  @override
  List<Object> get props => [ids];
}

class FilterLocationsEvent extends RickiEvent {}
