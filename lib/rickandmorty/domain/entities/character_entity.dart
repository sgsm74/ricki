import 'package:equatable/equatable.dart';

class CharacterEntity extends Equatable {
  const CharacterEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episodes,
    required this.url,
    required this.created,
  });
  final int id;
  final String name;
  final CharacterStatus status;
  final String species;
  final String type;
  final Gender gender;
  final Object origin;
  final Object location;
  final String image;
  final List<String> episodes;
  final String url;
  final DateTime created;

  @override
  List<Object?> get props => [id];
}

enum CharacterStatus {
  alive,
  dead,
  unknown,
}

enum Gender {
  female,
  male,
  genderless,
  unknown,
}
