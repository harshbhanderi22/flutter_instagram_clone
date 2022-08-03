import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Post_Format(username: "cute_balu",id_number: 3,caption: "Believe"),
        Post_Format(username: "harsh_bhanderi",id_number: 1,caption: "Cool and Calm"),
        Post_Format(username: "sneh_dungrani",id_number: 4,caption: "No caption neeeded"),
        Post_Format(username: "smit_bhadani",id_number: 2,caption: "Waiting......."),
        Post_Format(username: "prince_ambaliya",id_number: 5,caption: "Jukega nai."),

      ],
    );
  }
}

class Post_Format extends StatelessWidget {
  final String username;
  final int id_number;
  final String caption;
  Post_Format({Key? key,required this.username,required this.id_number,required this.caption}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Divider(
            height: 3.5,
            color: Colors.grey.withOpacity(0.9),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/self$id_number.jpg'),
                radius: 21,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              "$username",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            Expanded(child: Container()),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 10.0),

        Container(
          color: Colors.white,
          height: 400.0,
          width: double.infinity,
          child:
          Image.asset("images/self$id_number.jpg",width: double.infinity,),
        ),
        SizedBox(height: 5.0),
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                color: Colors.red;

              },
            ),
            IconButton(
              icon: Icon(
                Icons.add_comment_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {},
            ),
            Expanded(child:
            Container()),
            IconButton(
              icon: Icon(
                Icons.save,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/self4.jpg'),

                  radius: 10,
                ),
                SizedBox(width: 5.0,),
                Text("$username and 1000 other liked your post", style: TextStyle(color: Colors.white),textAlign: TextAlign.start,),
              ],
            ),
          ),
        ),
        SizedBox(height: 5.0,),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text("$username", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.start),
    SizedBox(width: 5.0,),
    Text(" $caption", style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        ),
        SizedBox(height: 5.0,),

        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text("View all Comments", style: TextStyle(color: Colors.grey),textAlign: TextAlign.start),
              ],
            ),
          ),
        ),
        SizedBox(height: 5.0,),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text("sneh_dungrani: 👌👌👌👌", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.start),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.0,),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/self$id_number.jpg'),

                  radius: 15,
                ),
                SizedBox(width: 10.0,),
                Text("Add Comment", style: TextStyle(color: Colors.grey),textAlign: TextAlign.start,),
              ],
            ),
          ),
        ),
        SizedBox(height: 8.0,),

      ],
    );
  }
}


