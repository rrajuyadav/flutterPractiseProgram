import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterjson_ser_task/studentclass.dart';



class AutoSerializableandDeserializable extends StatefulWidget {
   AutoSerializableandDeserializable({Key? key}) : super(key: key);

  @override
  State<AutoSerializableandDeserializable> createState() => _AutoSerializableandDeserializableState();
}

class _AutoSerializableandDeserializableState extends State<AutoSerializableandDeserializable> {



   Future<Student> loadJsonData() async {
     final String jsontext = await rootBundle.loadString("assets/student.json");
     Future.delayed(const Duration(milliseconds: 500));
      return  Student.fromJson(json.decode(jsontext));
   }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:FutureBuilder(
        future: loadJsonData() ,
      builder: (ctx, snapshot) {
    // Checking if future is resolved or not
    if (snapshot.connectionState == ConnectionState.done) {
    // If we got an error
    if (snapshot.hasError) {
    return Center(
    child: Text(
    '${snapshot.error} occurred',
    style: TextStyle(fontSize: 18),
    ),
    );

    // if we got our data
    } else if (snapshot.hasData) {
    // Extracting data from snapshot object
    final model = snapshot.data as Student;
    return Center(
    child: ListView.builder(
      itemCount: model.data?.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(10),
          child: ListTile(
            title: Text(model.data?[index].name ?? ""),

          ),
        );
      },
    )
    );
    }
    }
    // Displaying LoadingSpinner to indicate waiting state
    return Center(
    child: CircularProgressIndicator(),
    );
    },



    )
    );
  }
}









final _data = json.decode('''{
"data": [
{"_id":1,"name":"Aurelia Menendez","scores":[{"score":60.06045071030959,"type":"exam"},{"score":52.79790691903873,"type":"quiz"},{"score":71.76133439165544,"type":"homework"}]},
{"_id":2,"name":"Corliss Zuk","scores":[{"score":67.03077096065002,"type":"exam"},{"score":6.301851677835235,"type":"quiz"},{"score":66.28344683278382,"type":"homework"}]},
{"_id":3,"name":"Bao Ziglar","scores":[{"score":71.64343899778332,"type":"exam"},{"score":24.80221293650313,"type":"quiz"},{"score":42.26147058804812,"type":"homework"}]}
  ]
}''');