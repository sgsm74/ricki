import 'package:dio/dio.dart';
import 'package:ricki/core/const/consts.dart';
import 'package:ricki/core/utils/http_service.dart';
import 'package:ricki/rickandmorty/data/models/character_model.dart';
import 'package:ricki/rickandmorty/data/models/episode_model.dart';
import 'package:ricki/rickandmorty/data/models/location_model.dart';

abstract class RemoteDataSource {
  Future<List<CharacterModel>> characters();
  Future<CharacterModel> getCharacter(int id);
  Future<List<CharacterModel>> getCharacters(List<int> ids);
  Future<List<CharacterModel>> filterCharacters();

  Future<List<EpisodeModel>> episodes();
  Future<EpisodeModel> getEpisode(int id);
  Future<List<EpisodeModel>> getEpisodes(List<int> ids);
  Future<List<EpisodeModel>> filterEpisodes();

  Future<List<LocationModel>> locations();
  Future<LocationModel> getLocation(int id);
  Future<List<LocationModel>> getLocations(List<int> ids);
  Future<List<LocationModel>> filterLocations();
}

class RemoteDataSourceImpl extends RemoteDataSource {
  RemoteDataSourceImpl({required this.httpService});
  final HttpService httpService;
  @override
  Future<List<CharacterModel>> characters() async {
    try {
      List<CharacterModel> characters = [];
      final result = await httpService.getData(ServerPaths.characters);
      if (result.data['results'].isNotEmpty) {
        result.data['results']
            .forEach((data) => characters.add(CharacterModel.fromJson(data)));
      }
      return characters;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<CharacterModel> getCharacter(int id) async {
    try {
      final result = await httpService.getData(ServerPaths.getCharacter(id));
      return CharacterModel.fromJson(result.data);
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<List<CharacterModel>> getCharacters(List<int> ids) async {
    try {
      List<CharacterModel> characters = [];
      final result = await httpService.getData(ServerPaths.getCharacters(ids));
      if (result.data['results'].isNotEmpty) {
        result.data['results']
            .forEach((data) => characters.add(CharacterModel.fromJson(data)));
      }
      return characters;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<List<CharacterModel>> filterCharacters() async {
    try {
      List<CharacterModel> characters = [];
      final result = await httpService.getData(
        ServerPaths.filterCharacter,
        queryParameters: {
          //must be a map
        },
      );
      if (result.data['results'].isNotEmpty) {
        result.data['results'].forEach((data) => CharacterModel.fromJson(data));
      }
      return characters;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<List<EpisodeModel>> episodes() async {
    try {
      List<EpisodeModel> episodes = [];
      final result = await httpService.getData(ServerPaths.episodes);
      if (result.data['results'].isNotEmpty) {
        result.data['results']
            .map((data) => episodes.add(EpisodeModel.fromJson(data)));
      }
      return episodes;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<EpisodeModel> getEpisode(int id) async {
    try {
      final result = await httpService.getData(ServerPaths.getEpisode(id));
      return EpisodeModel.fromJson(result.data);
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<List<EpisodeModel>> getEpisodes(List<int> ids) async {
    try {
      List<EpisodeModel> episodes = [];
      final result = await httpService.getData(ServerPaths.getEpisodes(ids));
      if (result.data['results'].isNotEmpty) {
        result.data['results']
            .map((data) => episodes.add(EpisodeModel.fromJson(data)));
      }
      return episodes;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<List<EpisodeModel>> filterEpisodes() async {
    try {
      List<EpisodeModel> episodes = [];
      final result = await httpService.getData(
        ServerPaths.filterEpisode,
        queryParameters: {
          //must be a map
        },
      );
      if (result.data['results'].isNotEmpty) {
        result.data['results']
            .forEach((data) => episodes.add(EpisodeModel.fromJson(data)));
      }
      return episodes;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<List<LocationModel>> locations() async {
    try {
      List<LocationModel> locations = [];
      final result = await httpService.getData(ServerPaths.locations);
      if (result.data['results'].isNotEmpty) {
        result.data['results']
            .map((data) => locations.add(LocationModel.fromJson(data)));
      }
      return locations;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<LocationModel> getLocation(int id) async {
    try {
      final result = await httpService.getData(ServerPaths.locations);
      return LocationModel.fromJson(result.data);
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<List<LocationModel>> getLocations(List<int> ids) async {
    try {
      List<LocationModel> locations = [];
      final result = await httpService.getData(ServerPaths.getLocations(ids));
      if (result.data['results'].isNotEmpty) {
        result.data['results']
            .map((data) => locations.add(LocationModel.fromJson(data)));
      }
      return locations;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<List<LocationModel>> filterLocations() async {
    try {
      List<LocationModel> locations = [];
      final result = await httpService.getData(
        ServerPaths.filterLocation,
        queryParameters: {
          //must be a map
        },
      );
      if (result.data['results'].isNotEmpty) {
        result.data['results']
            .forEach((data) => locations.add(LocationModel.fromJson(data)));
      }
      return locations;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}
