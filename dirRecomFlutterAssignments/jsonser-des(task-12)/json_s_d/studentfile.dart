


import 'dart:convert';

import 'package:flutter/material.dart';


class Studentfile extends StatefulWidget {
  const Studentfile({Key? key}) : super(key: key);

  @override
  State<Studentfile> createState() => _StudentfileState();


}

class _StudentfileState extends State<Studentfile> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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


    // print(s);
    // print(s[0].toJson());

  }

  Stdentclass? sc;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text("data1${sc?.data?[0].name}"),

        ],
      ),
    );
  }
}





class Stdentclass {
  List<Data>? data;

  Stdentclass({this.data});

  Stdentclass.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? iId;
  String? name;
  List<Scores>? scores;

  Data({this.iId, this.name, this.scores});

  Data.fromJson(Map<String, dynamic> json) {
    iId = json['_id'];
    name = json['name'];
    if (json['scores'] != null) {
      scores = <Scores>[];
      json['scores'].forEach((v) {
        scores!.add(new Scores.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.iId;
    data['name'] = this.name;
    if (this.scores != null) {
      data['scores'] = this.scores!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Scores {
  double? score;
  String? type;

  Scores({this.score, this.type});

  Scores.fromJson(Map<String, dynamic> json) {
    score = json['score'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['score'] = this.score;
    data['type'] = this.type;
    return data;
  }
}
