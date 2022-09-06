import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  const LocationEntity({
    required this.id,
    required this.name,
    required this.type,
    required this.dimension,
    required this.residents,
    required this.url,
    required this.created,
  });

  final int id;
  final String name;
  final String type;
  final String dimension;
  final List<String> residents;
  final String url;
  final DateTime created;

  @override
  List<Object?> get props => [id];
}
