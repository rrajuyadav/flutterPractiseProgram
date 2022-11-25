
import 'dart:convert';

import 'package:flutter/material.dart';

class StudentModel{
  final String? name;
  final int? id;
  final List<ScoreModel>? scores;
  StudentModel({this.name, this.id, this.scores});

  factory StudentModel.fromJson(Map<String,dynamic> json) {
    return StudentModel(id: json['_id'],name: json['name'], scores: (json['scores'] as List).map((e) => ScoreModel.fromJson(e)).toList(),  );
  }

  Map<String, dynamic> toJson(){
    return {
      "name": name, "_id":id, "scores": scores?.map((e) => e?.toJson()).toList() };
  }
  @override
  String toString(){
    return '$name $id ${scores?[0].score}';
  }
}



class ScoreModel{
  final double? score;
  final String? type;

  ScoreModel({this.score, this.type});

  factory ScoreModel.fromJson(Map<String,dynamic> json){
    return ScoreModel(score: json['score'], type: json['type']);
  }

  Map<String,dynamic> toJson() =>
      {
        'score':score,
        'type':type
      };
}





//===========================================================
class extrasd extends StatefulWidget {
  const extrasd({Key? key}) : super(key: key);

  @override
  State<extrasd> createState() => _extrasdState();
}

class _extrasdState extends State<extrasd> {
StudentModel? sone;
List sss=[];

loadjsonn(){
  final data = json.decode('''
{
  "data": [
    {"_id":0,"name":"aimee Zank","scores":[{"score":1.463179736705023,"type":"exam"},{"score":11.78273309957772,"type":"quiz"},{"score":35.8740349954354,"type":"homework"}]},
    {"_id":1,"name":"Aurelia Menendez","scores":[{"score":60.06045071030959,"type":"exam"},{"score":52.79790691903873,"type":"quiz"},{"score":71.76133439165544,"type":"homework"}]},
    {"_id":2,"name":"Corliss Zuk","scores":[{"score":67.03077096065002,"type":"exam"},{"score":6.301851677835235,"type":"quiz"},{"score":66.28344683278382,"type":"homework"}]},
    {"_id":3,"name":"Bao Ziglar","scores":[{"score":71.64343899778332,"type":"exam"},{"score":24.80221293650313,"type":"quiz"},{"score":42.26147058804812,"type":"homework"}]},
    {"_id":4,"name":"Zachary Langlais","scores":[{"score":78.68385091304332,"type":"exam"},{"score":90.2963101368042,"type":"quiz"},{"score":34.41620148042529,"type":"homework"}]},
    {"_id":5,"name":"Wilburn Spiess","scores":[{"score":44.87186330181261,"type":"exam"},{"score":25.72395114668016,"type":"quiz"},{"score":63.42288310628662,"type":"homework"}]},
    {"_id":6,"name":"Jenette Flanders","scores":[{"score":37.32285459166097,"type":"exam"},{"score":28.32634976913737,"type":"quiz"},{"score":81.57115318686338,"type":"homework"}]},
    {"_id":7,"name":"Salena Olmos","scores":[{"score":90.37826509157176,"type":"exam"},{"score":42.48780666956811,"type":"quiz"},{"score":96.52986171633331,"type":"homework"}]},
    {"_id":8,"name":"Daphne Zheng","scores":[{"score":22.13583712862635,"type":"exam"},{"score":14.63969941335069,"type":"quiz"},{"score":75.94123677556644,"type":"homework"}]},
    {"_id":9,"name":"Sanda Ryba","scores":[{"score":97.00509953654694,"type":"exam"},{"score":97.80449632538915,"type":"quiz"},{"score":25.27368532432955,"type":"homework"}]},
    {"_id":10,"name":"Denisha Cast","scores":[{"score":45.61876862259409,"type":"exam"},{"score":98.35723209418343,"type":"quiz"},{"score":55.90835657173456,"type":"homework"}]}
  ]
}
''');

  final  s = (data['data'] as List).map((e) =>  StudentModel.fromJson(e)).toList();
  setState(() {
    final  s=sss;


  });
  // print(s);
  // print(s[0].toJson());

}

  @override
  Widget build(BuildContext context) {
    // final var sss= data['data'] as List).map((e) =>  StudentModel.fromJson(e)).toList();
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(onPressed: (){loadjsonn();}, child: Text("data")),
            Text("dsbcv${sone?.name}"),
      // s1?.scores?[0].score;
          ],
        ),
      ),
    );
  }
}


// void main(){
//
//   print(s);
//   print(s[0].toJson());
//
// }