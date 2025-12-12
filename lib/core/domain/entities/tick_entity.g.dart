// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tick_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TickEntityImpl _$$TickEntityImplFromJson(Map<String, dynamic> json) =>
    _$TickEntityImpl(
      id: json['id'] as String,
      routeId: json['routeId'] as String,
      routeName: json['routeName'] as String,
      date: DateTime.parse(json['date'] as String),
      status: $enumDecode(_$TickStatusEnumMap, json['status']),
      comment: json['comment'] as String,
      location: json['location'] as String,
      routeGrade: json['routeGrade'] as String,
    );

Map<String, dynamic> _$$TickEntityImplToJson(_$TickEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'routeId': instance.routeId,
      'routeName': instance.routeName,
      'date': instance.date.toIso8601String(),
      'status': _$TickStatusEnumMap[instance.status]!,
      'comment': instance.comment,
      'location': instance.location,
      'routeGrade': instance.routeGrade,
    };

const _$TickStatusEnumMap = {
  TickStatus.todo: 'todo',
  TickStatus.fell: 'fell',
  TickStatus.take: 'take',
  TickStatus.onSight: 'onSight',
  TickStatus.flash: 'flash',
  TickStatus.redPoint: 'redPoint',
};
