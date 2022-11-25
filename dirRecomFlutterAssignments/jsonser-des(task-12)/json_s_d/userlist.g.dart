// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Userlist _$UserlistFromJson(Map<String, dynamic> json) => Userlist(
      json['type'] as String?,
      (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserlistToJson(Userlist instance) => <String, dynamic>{
      'type': instance.type,
      'score': instance.score,
    };
