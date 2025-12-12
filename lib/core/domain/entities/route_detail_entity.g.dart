// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteDetailEntityImpl _$$RouteDetailEntityImplFromJson(
  Map<String, dynamic> json,
) => _$RouteDetailEntityImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  grade: json['grade'] as String,
  type: json['type'] as String,
  rating: (json['rating'] as num).toDouble(),
  location: json['location'] as String,
  imageUrl: json['imageUrl'] as String?,
  bolts: (json['bolts'] as num).toInt(),
  pitches: (json['pitches'] as num).toInt(),
  description: json['description'] as String,
  protection: json['protection'] as String,
  firstAscent: json['firstAscent'] as String,
);

Map<String, dynamic> _$$RouteDetailEntityImplToJson(
  _$RouteDetailEntityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'grade': instance.grade,
  'type': instance.type,
  'rating': instance.rating,
  'location': instance.location,
  'imageUrl': instance.imageUrl,
  'bolts': instance.bolts,
  'pitches': instance.pitches,
  'description': instance.description,
  'protection': instance.protection,
  'firstAscent': instance.firstAscent,
};
