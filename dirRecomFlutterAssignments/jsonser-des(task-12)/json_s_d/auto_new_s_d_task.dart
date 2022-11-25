import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterjson_ser_task/json_s_d/user.dart';

class AutoNewSDTask extends StatefulWidget {
  const AutoNewSDTask({Key? key}) : super(key: key);

  @override
  State<AutoNewSDTask> createState() => _AutoNewSDTaskState();
}

class _AutoNewSDTaskState extends State<AutoNewSDTask> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readjsondata();
  }

  @override
  List<User> _data = [];
  bool istrue = false;

  Future<User?> readjsondata() async {
    final String jsondata = await rootBundle.loadString("assets/student.json");
    final decodedataset = json.decode(jsondata);//here jsondata is string and decodedataset is map

    setState(() {
      _data = (decodedataset["data"] as List).map((e) => User.fromJson(e)).toList();
      istrue = true;
    });
    print(_data);

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AutoSerializationTask"),
        centerTitle: true,
      ),
      body: istrue
          ? Center(
              child: ListView(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        readjsondata();
                        print(_data);
                      },
                      child: const Text("data")),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          margin: const EdgeInsets.all(10),
                          color: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading:  CircleAvatar(
                                  child: Text(_data[index].id.toString() ?? 'N/A'),
                                         // Text(_data[index].id?.toString() ?? 'N/A')
                              ),


                              title: Column(
                                children: [
                                  Text(_data[index].name!),
                                  Column(
                                    children:_data[index].scores?.map((e) =>Text('${e.type} - ${e.score}') ).toList()?? [],
                                  ),
                                  // Text(_data[index].scores?.map((e) =>Text('${e.type} - ${e.score}') ).toList()),



                                  // RichText(
                                  //     text: TextSpan(children: [
                                  //   TextSpan(
                                  //       text: _data[index].scores.map((e) => Text("${e.type}-${e.score}"))),
                                  //
                                  //   const TextSpan(text: " :-       "),
                                  //   TextSpan(                      //---------------------------------------------------------------------
                                  //       text: _data[index]["scores"][0]["score"]
                                  //           .toString()),
                                  // ])),
                                ],
                              ),

                              // trailing: ,
                            ),
                          ),
                        );
                      })
                ],
              ),
            )
          : const CircularProgressIndicator(),
    );
  }
}













//
//
// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutterjson_ser_task/json_s_d/user.dart';
//
//
// class Newtasksd extends StatefulWidget {
//   const Newtasksd({Key? key}) : super(key: key);
//
//   @override
//   State<Newtasksd> createState() => _NewtasksdState();
// }
//
// class _NewtasksdState extends State<Newtasksd> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     loadJsonData();
//   }
//
//   @override
//   List<User> _data = [];
//
//   bool istrue = false;
//   List<User>? sc1;
//
//   // @override
//   // void initState(){
//   //   super.initState();
//   //   loadJsonData;
//   // }
//
//   Future<User?> loadJsonData() async {
//     final String jsontext = await rootBundle.loadString("assets/student.json");
//     final newdata = json.decode(jsontext);
//
//     setState(() {
//       _data = (newdata["data"] as List).map((e) => User.fromJson(e)).toList();
//       istrue = true;
//     });
//     print(_data);
//     return null;
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: istrue
//           ? ListView(
//         // shrinkWrap: true,
//         children: [
//           const Text("hello"),
//           ElevatedButton(
//               onPressed: () {
//                 // loadJsonData();
//                 // AutoNewSDTask();
//               },
//               child: Text("press")),
//           ListView.separated(
//               separatorBuilder: (context, index) {
//                 return const Divider(
//                   thickness: 2,
//                 );
//               },
//               shrinkWrap: true,
//               itemCount: _data.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                     title: Column(
//                       children: [
//                         Text('${_data[index].name}'),
//                         // Text(_data[index]["name"]),
//                         Column(
//                           children: _data[index].scores?.map((e) =>
//                               Text('${e.type} - ${e.score}')).toList() ?? [],
//                         ),
//
//
//                         // Text(_data[index]["name"]), //-----------
//
//                         // ------------------------------------
//                         // RichText(text:
//                         // TextSpan(children: [
//                         //   TextSpan(text: _data[index]["scores"][index]["type"]),
//                         //   TextSpan(
//                         //       text: _data[index]["scores"][index]["type"]),
//                         //   // TextSpan(text: _data[index]['Scores'][index]["score"]),
//                         //
//                         // ])
//                         // ),
//                       ],
//                     ),
//
//                     leading: CircleAvatar(
//                         child: Text(_data[index].id?.toString() ?? 'N/A'))
//                   // trailing: CircleAvatar(child: Text(_data[index]["name"]),),
//                 );
//                 // map((e) => Userdatalist.fromJson(e)).toList(),
//               }),
//         ],
//       )
//           : const CircularProgressIndicator(
//         color: Colors.red,
//         backgroundColor: Colors.grey,
//       ),
//     );
//   }
// }
