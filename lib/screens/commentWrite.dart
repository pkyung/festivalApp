import 'package:festival/config/palette.dart';
import 'package:flutter/material.dart';

class commentWrite extends StatefulWidget {
  const commentWrite({Key? key}) : super(key: key);

  @override
  _commentWriteState createState() => _commentWriteState();
}

class _commentWriteState extends State<commentWrite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Palette.background2,
        ),
        elevation: 0.0,
        backgroundColor: Palette.background,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "축제 한줄평 남기기",
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
              height: 160,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    thickness: 1,
                    height: 1,
                    color: Palette.background2,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Form(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "축제평을 입력하세요.",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: Palette.textColor1,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                  ),
                  Divider(
                    thickness: 1,
                    height: 1,
                    color: Palette.background2,
                    indent: 20,
                    endIndent: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Opacity(
                  opacity: 0.0,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "글 올리기",
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
