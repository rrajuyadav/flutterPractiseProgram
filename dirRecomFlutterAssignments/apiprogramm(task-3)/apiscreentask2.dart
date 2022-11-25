import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';

class Tasktwoapisum extends StatefulWidget {
  const Tasktwoapisum({Key? key}) : super(key: key);

  @override
  State<Tasktwoapisum> createState() => _TasktwoapisumState();
}

class _TasktwoapisumState extends State<Tasktwoapisum> {
  @override
  var data;
  List postlist = [];
// String get abc => abc;
  @override
  initState() {
    super.initState();
    run();
  }

  Future run() async {
    var url =
        Uri.parse('https://jsonplaceholder.typicode.com/photos?albumId=1');
    var response = await http.get(url);
    print('Response status:${response.statusCode}');
//print('Response status:${response.body}');
    data = jsonDecode(response.body) as List;
    print(data.length);
// for (var index = 0; index < data.length; index++) {
//   postlist.add(data[index]['name']);
// }
    setState(() {
      print(postlist.length);
    });
  }

  void fun() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api call Task-2'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                print(postlist.length);
                fun();
              },
              icon: Icon(Icons.send)),
        ],
      ),
      body: data != null
          ? Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView.separated(
                itemCount: data.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        // https://via.placeholder.com/600/92c952,
                        child: Image(image: NetworkImage(data[index]['url'])),
                      ),
                      title: Text(
                        data[index]['title'],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(data[index]['albumId'].toString()),
                    ),
                  );
                },
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
