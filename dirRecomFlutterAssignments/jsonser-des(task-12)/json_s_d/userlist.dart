import 'package:json_annotation/json_annotation.dart';
part 'userlist.g.dart';


@JsonSerializable()
class Userlist{
  final String? type;
  final double? score;

  Userlist(this.type, this.score);
  factory Userlist.fromJson(Map<String,dynamic> json)=>_$UserlistFromJson(json);
  Map<String,dynamic> toJson()=>_$UserlistToJson(this);  // Deserializable;
  // Map<String, dynamic> toJson() => _$UserToJson(this);
}
