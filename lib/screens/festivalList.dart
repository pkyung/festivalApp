import 'package:festival/config/palette.dart';
import 'package:flutter/material.dart';

class festivalList extends StatefulWidget {
  const festivalList({Key? key}) : super(key: key);

  @override
  _festivalListState createState() => _festivalListState();
}

class _festivalListState extends State<festivalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Palette.background,
      ),
      backgroundColor: Palette.background,
      body: Center(
        child: Column(
          children: [
            Text(
              "축제 리스트",
              style: TextStyle(color: Palette.textColor1, fontSize: 22),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: Palette.background2,
              indent: 40,
              endIndent: 40,
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width - 80,
              height: MediaQuery.of(context).size.height - 200,
              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      "이천 도자기 축제",
                      style: TextStyle(color: Palette.textColor1, fontSize: 18),
                    ),
                    subtitle: Text(
                      "2022.05.21~2022.05.31",
                      style: TextStyle(color: Palette.textColor1, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    subtitle: Text(
                      "2022.05.21~2022.05.31",
                      style: TextStyle(color: Palette.textColor1, fontSize: 15),
                    ),
                    title: Text(
                      "이천 백사산수유 꽃 축제",
                      style: TextStyle(color: Palette.textColor1, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    subtitle: Text(
                      "2022.05.21~2022.05.31",
                      style: TextStyle(color: Palette.textColor1, fontSize: 15),
                    ),
                    title: Text(
                      "이천 복숭아 축제",
                      style: TextStyle(color: Palette.textColor1, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    subtitle: Text(
                      "2022.05.21~2022.05.31",
                      style: TextStyle(color: Palette.textColor1, fontSize: 15),
                    ),
                    title: Text(
                      "이천 쌀 문화 축제",
                      style: TextStyle(color: Palette.textColor1, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(subtitle: Text(
                    "2022.05.21~2022.05.31",
                    style: TextStyle(color: Palette.textColor1, fontSize: 15),
                  ),
                    title: Text(
                      "이천 설봉산 별빛 축제",
                      style: TextStyle(color: Palette.textColor1, fontSize: 18),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
