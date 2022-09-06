import 'package:ricki/rickandmorty/domain/entities/episode_entity.dart';

class EpisodeModel extends EpisodeEntity {
  const EpisodeModel({
    required super.id,
    required super.name,
    required super.airDate,
    required super.episode,
    required super.characters,
    required super.url,
    required super.created,
  });

  factory EpisodeModel.fromJson(Map<String, dynamic> data) {
    return EpisodeModel(
      id: data['id'],
      name: data['name'],
      airDate: data['airDate'],
      episode: data['episode'],
      characters: data['characters'],
      url: data['url'],
      created: DateTime.parse(data['created']),
    );
  }
}
