import 'package:json_annotation/json_annotation.dart';
import 'userlist.dart';
part 'user.g.dart';
// @JsonSerializable(explicitToJson: true)
@JsonSerializable()
class User{
  final String? name;
  final int? id;
  final List<Userlist>? scores;

  User(this.name, this.id, this.scores);
  factory User.fromJson(Map<String,dynamic> json)=>_$UserFromJson(json);    // serializable
  Map<String,dynamic> toJson()=>_$UserToJson(this); // Deserializable;

  @override
  String toString() {
    return '$name $id ${scores?[0].score}';
  }

}


