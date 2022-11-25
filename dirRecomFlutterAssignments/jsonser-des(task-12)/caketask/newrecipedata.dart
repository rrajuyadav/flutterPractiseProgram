import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'cakeclass.dart';

class CakeRecipeData extends StatefulWidget {
  const CakeRecipeData({Key? key}) : super(key: key);

  @override
  State<CakeRecipeData> createState() => _cakeRecipedatState();
}

class _cakeRecipedatState extends State<CakeRecipeData> {
  Cakeclass? _data;

  Future<Cakeclass?> loadjsondata() async {
    final String data =
        await rootBundle.loadString("assets/recipecakefile.json");
    final jsondecoddata = json.decode(data);
    setState(() {
      _data = Cakeclass.fromJson(jsondecoddata);
    });
    print(_data?.items?.item?[0].batters?.batter?[0].type);
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CakeRecipe"),
      ),
      body: Center(
        child: Column(

          children: [
            const Text("dataaa"),
            // Cake Diagram
            Column(children: [
              Container(
                height: 6,
                width: 5,
                color: Colors.yellow,
              ),
              Container(
                height: 30,
                width: 10,
                color: Colors.red,
              ),
              Container(
                height: 50,
                width: 70,
                color: const Color(0xffE8E573),
              ),
              Container(
                height: 50,
                width: 100,
                color: const Color(0xffEE4CCf),
              ),
              Container(
                height: 50,
                width: 130,
                color: const Color(0xffFC4324),
              ),
            ],),               //cake picture

            ElevatedButton(
                onPressed: () {
                  loadjsondata();
                },
                child: const Text("press")),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _data?.items?.item?.length ?? 3,
              itemBuilder: (BuildContext context, int index) {
                return   SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Text("id        "),
                          Text("name  "),
                          Text("type     "),
                          Text("ppu    "),
                          Text("batter_id     "),
                        ],
                      ),
                      Row(
                        children: [
                          Text(_data?.items?.item?[0].id ?? "id"),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(_data?.items?.item?[0].name ?? "name"),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(_data?.items?.item?[0].type ?? "type"),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(_data?.items?.item?[0].ppu.toString() ?? "ppu"),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(_data?.items?.item?[0].batters?.batter?[index]
                                  .id ??
                              "batter_type"),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                          ),


                      const SizedBox(height: 25,),
                      Column(children: _data?.items?.item?[0].batters?.batter?.map((e) => Text("${e.id} :- ${e.type} ")).toList() ?? [],),
                      const SizedBox(height: 25,),

                      Column(children: _data?.items?.item?[0].topping?.map((e) => Text("${e.id} :- ${e.type} ")).toList() ?? [],),


                      // Column(children: _data?.items?.item?[0].topping?.map((e) => Text("${e.id}")).toList() ?? [],)
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
