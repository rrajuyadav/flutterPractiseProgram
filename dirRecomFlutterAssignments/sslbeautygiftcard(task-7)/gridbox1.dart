import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridboxone extends StatefulWidget {
  const Gridboxone({Key? key}) : super(key: key);

  @override
  State<Gridboxone> createState() => _GridboxoneState();
}

class _GridboxoneState extends State<Gridboxone> {
  final _names = [
    'Birthday',
    'Engagement',
    'Wedding',
    'Anniversary',
    'Friendship Day',
    'I love You',
    'Congratulations',
    'Valentine’s Day',
    'Mother’s Day',
    'Father’s Day',
    'Women’s Day',
    'BFF',
    'Best Wishes',
    'Sorry',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics() ,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2.5 / 0.8,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemCount: _names.length,
        itemBuilder: (BuildContext context, int index) {
          final name = _names[index];
          return Container(
            height: 10,
            color: Color(0xffEAE9EF),
            child: TextButton(
              onPressed: () {},
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          );
        },
      ),
    );
  }
}
