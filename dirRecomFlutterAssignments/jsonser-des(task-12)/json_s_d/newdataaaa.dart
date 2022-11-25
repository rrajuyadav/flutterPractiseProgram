import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterjson_ser_task/json_s_d/user.dart';

import 'auto_new_s_d_task.dart';


class Newtasksd extends StatefulWidget {
  const Newtasksd({Key? key}) : super(key: key);

  @override
  State<Newtasksd> createState() => _NewtasksdState();
}

class _NewtasksdState extends State<Newtasksd> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadJsonData();
  }

  @override
  UserDataListForStudents? _data;

  bool istrue = false;
  List<Userdata>? sc1;
  // @override
  // void initState(){
  //   super.initState();
  //   loadJsonData;
  // }

  Future<Userdata?> loadJsonData() async {
    final String jsontext = await rootBundle.loadString("assets/student.json");
    final newdata = json.decode(jsontext);

    setState(() {
      _data = UserDataListForStudents.fromJson(newdata);
      istrue = true;
    });
    print(_data);
    return null;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: istrue
          ? ListView(
        // shrinkWrap: true,
        children: [
          ElevatedButton(
              onPressed: () {
                // loadJsonData();
                AutoNewSDTask();
              },
              child: Text("press")),
          ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 2,
                );
              },
              shrinkWrap: true,
              itemCount: _data?.users.length?? 0,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    title: Column(
                      children: [
                        Text('${_data!.users[index].name}'),
                        // Text(_data[index]["name"]),
                        Column(
                          children:_data!.users[index].scores?.map((e) =>Text('${e.type} - ${e.score}') ).toList()?? [],
                        ),


                        // Text(_data[index]["name"]), //-----------

                        // ------------------------------------
                        // RichText(text:
                        // TextSpan(children: [
                        //   TextSpan(text: _data[index]["scores"][index]["type"]),
                        //   TextSpan(
                        //       text: _data[index]["scores"][index]["type"]),
                        //   // TextSpan(text: _data[index]['Scores'][index]["score"]),
                        //
                        // ])
                        // ),
                      ],
                    ),

                    leading: CircleAvatar(
                        child: Text(_data!.users[index].id?.toString() ?? 'N/A'))
                  // trailing: CircleAvatar(child: Text(_data[index]["name"]),),
                );
                // map((e) => Userdatalist.fromJson(e)).toList(),
              }),
        ],
      )
          : const CircularProgressIndicator(
        color: Colors.red,
        backgroundColor: Colors.grey,
      ),
    );
  }
}
class UserDataListForStudents{
  final List<Userdata> users;

  UserDataListForStudents(this.users);

  factory UserDataListForStudents.fromJson(Map<String,dynamic> json){
    return UserDataListForStudents((json['data'] as List).map((e) => Userdata.fromJson(e)).toList());}

}

class Userdata {
  final String? name;
  final int? id;
  final List<Userdatalist>? scores;
  Userdata({this.name, this.id, this.scores});

  factory Userdata.fromJson(Map<String, dynamic> json) {
    return Userdata(
      id: json['_id'],
      name: json['name'],
      scores: (json['scores'] as List)
          .map((e) => Userdatalist.fromJson(e))
          .toList(),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "_id": id,
      "scores": scores?.map((e) => e?.toJson()).toList()
    };
  }

  @override
  String toString() {
    return '$name $id ${scores?[0].score}';
  }
}

class Userdatalist {
  final double? score;
  final String? type;
  Userdatalist({this.score, this.type});
  factory Userdatalist.fromJson(Map<String, dynamic> json) {
    return Userdatalist(score: json['score'], type: json['type']);
  }
  Map<String, dynamic> toJson() => {'score': score, 'type': type};
}
