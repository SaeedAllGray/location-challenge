import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  final bool isBest;
  final bool? isGlobalId;
  final int matchQuality;
  final String id;
  final String name;
  final String type;
  final String? disassembledName;

  final List<double> coord;

  Location({
    required this.isBest,
    required this.isGlobalId,
    required this.matchQuality,
    required this.id,
    required this.name,
    required this.type,
    required this.disassembledName,
    required this.coord,
  });
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
