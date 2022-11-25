//Additional run args : --profile     // it is used for profile debugguing  performance check up.

import 'package:flutter/material.dart';
import 'package:flutterjson_ser_task/newuiapplication/natureclass.dart';

class Uinewmainpage extends StatefulWidget {
  const Uinewmainpage({Key? key}) : super(key: key);

  @override
  State<Uinewmainpage> createState() => _UinewmainpageState();
}

class _UinewmainpageState extends State<Uinewmainpage> {
  // int count = 0;
  final count = ValueNotifier(0);

  // int value = 0;
  final value = ValueNotifier(0);

  // int value1 = 0;
   final game = ValueNotifier<String>(" ");

  final _changevalue = ValueNotifier<int>(0);
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   Timer.periodic(const Duration(minutes: 1), (timer) {
  //     setState(() {
  //       value++;
  //     });
  //   });
  //   // Timer.periodic(Duration( seconds: 1), (timer) {
  //   //   setState(() {
  //   //     value1++;
  //   //   });
  //   // });
  // }


   callback(games) {
    game.value=games;

  }

  @override
  Widget build(BuildContext context) {

    setState(() {

      print("hh++++++++++++++++++++++++++");

    });


    print("hh");



    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text("newUitaskapplication"),
        centerTitle: true,
        actions: [
          ValueListenableBuilder(valueListenable: value, builder: (context,data,_){
            print('something');
            return Text("$data");                  // or    Text(data.toString());

          })
          // Text("${value.toString()}  "
              // : "${value1.toString()}",
              // ),
        ],
      ),
      body: Center(
        child: ListView(children: [
          const Center(
              child: Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30, color: Colors.pink, fontWeight: FontWeight.w700
                // backgroundColor: Colors.cyan,
                ),
          )),


          // ElevatedButton(onPressed: (), child: child),
          ValueListenableBuilder(
              valueListenable: game,
              builder: (context, data, _) {
                return Text("juydatafn,kybgn $data");
              }),


          Newfunction(callback:callback, games:"cricket"),

          Newfunction(callback:callback, games:"tennis"),



          // Text(_changevalue),
          ValueListenableBuilder(
              valueListenable: _changevalue,
              builder: (context, data, child) {
                print(' 1');
                return Text("$data : data");
              }),
          ElevatedButton(
              onPressed: () {
                _changevalue.value++;
              },
              child: const Text("data")),

          // Image.asset("assets/image/img_1.png"),
          InkWell(
              child: Image.asset("assets/image/img_1.png"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: callNow));
              }),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: ValueListenableBuilder(valueListenable: count, builder: (ctx,data,_){
              return Text(data.toString());
            })

              // Text(count.toString()),
          ),                            //======================================text
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: lstitems.length,
            itemBuilder: (BuildContext context, int index) {
              print(index);
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 15),
                child: Card(
                  color: Colors.black54,
                  child: ListTile(
                    title: Text(
                      lstitems[index]?.name! ?? "none",
                      style: const TextStyle(
                          color: Colors.cyanAccent, fontSize: 20),
                    ),
                    subtitle: Text(
                      lstitems[index]?.about! ?? "none",
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    leading: Image.asset(
                      lstitems[index]?.img! ?? "urlimg",
                    ),
                    trailing: ElevatedButton.icon(
                        onPressed: () {
                          count.value++;
                        },
                        onLongPress: () {
                          count.value--;
                        },

                        // onLongPress: ()=> setState(() { count--; }),
                        // onPressed: () => setState(() {count++;}),

                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        label:
                            // Text(count.toString()),
                            ValueListenableBuilder(
                                valueListenable: count,
                                builder: (context, chd, _) {
                                  return Text(chd.toString());
                                })
                        // label: Text("")
                        ),
                  ),
                ),
              );
            },
          )
        ]),
      ),
    );
  }
}

List? imagess = [
  "assets/image/img_2.png",
  "assets/image/img_5.png",
  "assets/image/img.png",
  "assets/image/img_1.png",
  "assets/image/img_4.png",
];
Widget callNow(BuildContext context) {
  return ListView.builder(
      itemCount: imagess?.length!,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image.asset(imagess?[index]!),
          ],
        );
      });
}




class Newfunction extends StatelessWidget{

  final String games;
  final Function callback;

  Newfunction ({ required this.callback, required this.games});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callback(games);

    }, child: Text(games));

  }



}