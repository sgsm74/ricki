import 'package:ricki/rickandmorty/domain/entities/location_entity.dart';

class LocationModel extends LocationEntity {
  const LocationModel({
    required super.id,
    required super.name,
    required super.type,
    required super.dimension,
    required super.residents,
    required super.url,
    required super.created,
  });

  factory LocationModel.fromJson(Map<String, dynamic> data) {
    return LocationModel(
      id: data['id'],
      name: data['name'],
      type: data['type'],
      dimension: data['dimension'],
      residents: data['residents'],
      url: data['url'],
      created: DateTime.parse(data['created']),
    );
  }
}
