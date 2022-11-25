import 'package:flutter/material.dart';
import 'package:uiexample_d276/firstscreen.dart';

class Taskondateandtime extends StatefulWidget {
  const Taskondateandtime({Key? key}) : super(key: key);

  @override
  State<Taskondateandtime> createState() => _TaskondateandtimeState();
}

class _TaskondateandtimeState extends State<Taskondateandtime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task'),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          //Alert Dialog	Bottom SheetAlert Dialog
          // Date Picker	Time Picker
          Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {
                    myalertdialogbox();
                  },
                  child: Text('Alert Dialog'))),

          Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.amberAccent),
                  onPressed: () {
                    mybottomsheetbox();
                  },
                  child: const Text('Bottom Sheet'))),

          Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
  style: ElevatedButton.styleFrom(primary: Colors.red),

                  onPressed: () {
                    mydatepickerbox();
                  },
                  child: Text('Date Picker'))),
          Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    mytimepickerbox();
                  },
                  child: const Text('Time Picker'))),
          // ElevatedButton(onPressed: (){}, child: Text('Bottom Sheet')),
          // ElevatedButton(onPressed: (){}, child: Text('Date Picker')),
          // ElevatedButton(onPressed: (){}, child: Text('Time Picker')),
          // ElevatedButton(onPressed: (){}, child: Text('Time Picker')),
        ],
      ),
    );
  }

  Future<void> myalertdialogbox() async {
    Widget okbutton = ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('ok'));
    AlertDialog alert = AlertDialog(
      title: Text('Alert_Box'),
      content: const Text('This is a alert dialog box'),
      actions: [
        okbutton,
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  Future<void> mybottomsheetbox() async {
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        height: 200,
        color: Colors.tealAccent,
        child:Center(child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text('model data bottom sheet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('mybottomsheetbox') ),
          ),

        ],),) ,
      );

    });
  }

  Future<void> mydatepickerbox() async {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2050)).then((value) => print('Date:${value!.day}/${value.month}/${value.year}'));
  }

  Future<void> mytimepickerbox() async {
    DateTime time = DateTime.now();
    showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: time.hour, minute: time.minute),
    ).then((value) =>
        print('Time:${value!.hour}:${value.minute}-${value.period.name}'));
  }
}
