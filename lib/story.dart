import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class story extends StatelessWidget {
  const story({Key? key}) : super(key: key);
  Widget stroycreate(int a, String name) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 39,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/self$a.jpg'),
              radius: 37,
            ),
          ),
        ),
        SizedBox(height: 7.0),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "$name",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> circle_story = [
      stroycreate(1, "Harsh Bhanderi"),
      stroycreate(2, "Smit Bhadani"),
      stroycreate(3, "balu Chovatiya"),
      stroycreate(4, "Sneh Dungrani"),
      stroycreate(1, "Harsh Bhanderi"),
      stroycreate(2, "Smit Bhadani"),
      stroycreate(3, "balu Chovatiya"),
      stroycreate(4, "Sneh Dungrani"),
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: circle_story),
    );
  }
}
