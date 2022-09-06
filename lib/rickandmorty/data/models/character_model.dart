import 'package:ricki/rickandmorty/domain/entities/character_entity.dart';

class CharacterModel extends CharacterEntity {
  const CharacterModel({
    required super.id,
    required super.name,
    required super.status,
    required super.species,
    required super.type,
    required super.gender,
    required super.origin,
    required super.location,
    required super.image,
    required super.episodes,
    required super.url,
    required super.created,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> data) {
    return CharacterModel(
      id: data['id'],
      name: data['name'],
      status: data['status'],
      species: data['species'],
      type: data['type'],
      gender: data['gender'],
      origin: data['origin'],
      location: data['location'],
      image: data['image'],
      episodes: data['episodes'],
      url: data['url'],
      created: DateTime.parse(data['created']),
    );
  }
}
