// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientdataclass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Clientdataclass _$ClientdataclassFromJson(Map<String, dynamic> json) =>
    Clientdataclass(
      json['client_type'] as String?,
      json['client_id'] as int?,
      json['feature_clients'] == null
          ? null
          : FeatureClients.fromJson(
              json['feature_clients'] as Map<String, dynamic>),
      (json['clients'] as List<dynamic>?)
          ?.map((e) => Clientsitem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClientdataclassToJson(Clientdataclass instance) =>
    <String, dynamic>{
      'client_type': instance.client_type,
      'client_id': instance.client_id,
      'feature_clients': instance.feature_clients,
      'clients': instance.clients,
    };

FeatureClients _$FeatureClientsFromJson(Map<String, dynamic> json) =>
    FeatureClients(
      (json['clients'] as List<dynamic>?)
          ?.map((e) => Clientsitem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeatureClientsToJson(FeatureClients instance) =>
    <String, dynamic>{
      'clients': instance.clients,
    };

Clientsitem _$ClientsitemFromJson(Map<String, dynamic> json) => Clientsitem(
      json['id'] as String?,
      json['isActive'] as bool?,
      json['age'] as int?,
      json['name'] as String?,
      json['gender'] as String?,
      json['company'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['address'] as String?,
    );

Map<String, dynamic> _$ClientsitemToJson(Clientsitem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'age': instance.age,
      'name': instance.name,
      'gender': instance.gender,
      'company': instance.company,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
    };
