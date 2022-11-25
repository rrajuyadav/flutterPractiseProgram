import 'package:json_annotation/json_annotation.dart';

part 'clientdataclass.g.dart';

@JsonSerializable()
class Clientdataclass {
  final String? client_type;
  final int? client_id;
  final FeatureClients? feature_clients;
  final List<Clientsitem>? clients;

  const Clientdataclass(
      this.client_type, this.client_id, this.feature_clients, this.clients);

  factory Clientdataclass.fromJson(Map<String, dynamic> json) =>
      _$ClientdataclassFromJson(json);
  Map<String, dynamic> toJson() => _$ClientdataclassToJson(this);
}


@JsonSerializable()
class FeatureClients {
  final List<Clientsitem>? clients;

  const FeatureClients(this.clients);

  factory FeatureClients.fromJson(Map<String, dynamic> json) =>
      _$FeatureClientsFromJson(json);
  Map<String, dynamic> toJson() => _$FeatureClientsToJson(this);
}


@JsonSerializable()
class Clientsitem {
  final String? id;
  final bool? isActive;
  final int? age;
  final String? name;
  final String? gender;
  final String? company;
  final String? email;
  final String? phone;
  final String? address;
  const Clientsitem(this.id, this.isActive, this.age, this.name, this.gender,
      this.company, this.email, this.phone, this.address);
  factory Clientsitem.fromJson(Map<String, dynamic> json) =>
      _$ClientsitemFromJson(json);
  Map<String, dynamic> toJson() => _$ClientsitemToJson(this);
  @override
  String toString() => "$id $name $isActive";
}
