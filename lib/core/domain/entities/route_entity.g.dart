// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteEntityImpl _$$RouteEntityImplFromJson(Map<String, dynamic> json) =>
    _$RouteEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      grade: json['grade'] as String,
      type: json['type'] as String,
      rating: (json['rating'] as num).toDouble(),
      location: json['location'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$RouteEntityImplToJson(_$RouteEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'grade': instance.grade,
      'type': instance.type,
      'rating': instance.rating,
      'location': instance.location,
      'imageUrl': instance.imageUrl,
    };
