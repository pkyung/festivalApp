import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festival/config/palette.dart';
import 'package:festival/screens/commentWrite.dart';
import 'package:flutter/material.dart';

class Comment extends StatefulWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  bool isFavorite = false;
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection("users").snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Palette.background2,
        ),
        elevation: 0.0,
        backgroundColor: Palette.background,
      ),
      backgroundColor: Palette.background,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "축제 한줄평",
              style: TextStyle(color: Palette.textColor1, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              height: 1,
              color: Palette.background2,
              indent: 30,
              endIndent: 30,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 70,
              height: MediaQuery.of(context).size.height - 250,
              color: Colors.white,
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("users")
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return ListView(
                        children: snapshot.data!.docs.map((document) {
                          return Container(
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                      "\" "+document["comments"]+" \"",
                                    style: TextStyle(
                                      color: Palette.textColor1,
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Divider(
                                    thickness: 1,
                                    endIndent: 30,
                                    indent: 30,
                                    color: Palette.background2,
                                  )
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    }
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Opacity(
                  opacity: 0.0,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "글쓰기",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
                Opacity(
                  opacity: 0.0,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "글쓰기",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => commentWrite()));
                  },
                  child: Text(
                    "글쓰기",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Palette.background2,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
