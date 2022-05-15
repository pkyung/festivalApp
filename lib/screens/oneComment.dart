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
              width: MediaQuery.of(context).size.width - 60,
              height: MediaQuery.of(context).size.height - 260,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Palette.background2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "여기 닭꼬치 푸드트럭 가서 꼭 사드세요!",
                      style: TextStyle(
                        fontSize: 18,
                        color: Palette.textColor1,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                            opacity: 0.0,
                            child: Icon(Icons.favorite)
                        ),
                        IconButton(
                          onPressed: (){
                            setState((){
                              isFavorite = !isFavorite;
                            });

                          },
                          icon: isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Palette.background2,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ],
                ),
              ),
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
                              builder: (context) => commentWrite()
                          )
                      );
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
