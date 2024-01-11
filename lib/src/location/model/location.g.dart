// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      isBest: json['isBest'] as bool,
      isGlobalId: json['isGlobalId'] as bool?,
      matchQuality: json['matchQuality'] as int,
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      disassembledName: json['disassembledName'] as String?,
      coord: (json['coord'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'isBest': instance.isBest,
      'isGlobalId': instance.isGlobalId,
      'matchQuality': instance.matchQuality,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'disassembledName': instance.disassembledName,
      'coord': instance.coord,
    };
