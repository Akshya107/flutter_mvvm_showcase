// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jokes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokesModel _$JokesModelFromJson(Map<String, dynamic> json) => JokesModel()
  ..type = json['type'] as String
  ..setup = json['setup'] as String
  ..punchline = json['punchline'] as String
  ..id = (json['id'] as num).toDouble();

Map<String, dynamic> _$JokesModelToJson(JokesModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'setup': instance.setup,
      'punchline': instance.punchline,
      'id': instance.id,
    };
