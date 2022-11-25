import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'clientdataclass.dart';

class ClientDataFirstScreen extends StatefulWidget {
  const ClientDataFirstScreen({Key? key}) : super(key: key);

  @override
  State<ClientDataFirstScreen> createState() => _ClientDataFirstScreenState();
}

class _ClientDataFirstScreenState extends State<ClientDataFirstScreen> {

  Clientdataclass? _data;

  Future<Clientdataclass?> loadjsondata() async{
    final String data = await rootBundle.loadString("assets/clientdatafile.json");
    final decodeddata = json.decode(data);
    setState(() {
      _data=Clientdataclass.fromJson(decodeddata);
    });
    print(_data?.feature_clients?.clients?[0].age?.toInt());        // here we can use the toString()       ,toInt()  , tro double() like methods
    return null;
  }


  @override
  Widget build(BuildContext context) {
    List hello= _data?.clients?.map((e) => Text("${e.name}")).toList() ?? [];
    return Scaffold(
      appBar: AppBar(title: Text("Clients"),),
      body: Column(
        children:  [
          ElevatedButton(onPressed: (){
            loadjsondata();
          }, child: const Text("press")),

          const Text("Hello_data"),

          Text(_data?.client_id.toString() ?? "0"),
          Text(_data?.feature_clients?.clients?[0].age.toString() ?? "age"),
          Text(_data?.clients?[0].age.toString() ?? "age"),
          Column(children: _data?.clients?.map((e) => Text("${e.name}")).toList() ?? []),
          Text(_data?.client_type ?? "type"),
          Text("$hello"),
          Text(_data?.clients?[0].email ?? "email"),
          Text(_data?.feature_clients?.clients?[0].isActive.toString() ?? "bool"),
          Text("${_data?.clients?[1].company}"),


        ],
      ),
    );
  }
}








//{
//  "first_name": "First Name",
//  "batch_name": "Batch 1",
//  "enrolled_subjects": [
//    "Subject 4",
//    "Subject 5"
//  ],
//  "batch_timetable": {
//    "Mon": {
//      "Subject 4": [
//        "6:00 PM - 7:00 PM"
//      ],
//      "Subject 5": [
//        "5:00 PM - 6:00 PM",
//        "7:00 PM - 8:00 PM"
//      ],
//      "Subject 6": [
//        "8:00 PM - 9:00 PM"
//      ]
//    },
//    "Tue": {
//      "Subject 4": [
//        "6:00 PM - 7:00 PM"
//      ],
//      "Subject 5": [
//        "7:00 PM - 8:00 PM"
//      ],
//      "Subject 6": [
//        "8:00 PM - 9:00 PM"
//      ]
//    }
//  }
//}