import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festival/screens/ParkingScore.dart';
import 'package:flutter/material.dart';

import '../config/palette.dart';

class festivalInf extends StatefulWidget {
  const festivalInf({Key? key}) : super(key: key);

  @override
  _festivalInfState createState() => _festivalInfState();
}

class _festivalInfState extends State<festivalInf> {
  String parkingScore = "";
  Future<dynamic> parkingScore1 = FirebaseFirestore.instance
      .collection("parking")
      .doc("parkingScore")
      .get()
      .then((DocumentSnapshot value) => (value.data()! as Map)["parking"]);


  @override
  void initState() {
    parkingscore();
    print(parkingScore);
    print(parkingScore1);
  }

  Future<dynamic> parkingscore() async {
    parkingScore = await parkingScore1;
    print(parkingScore);
    return parkingScore;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background2,
        elevation: 0.0,
        title: Text(
          "[제 35회 이천 도자기 축제]",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Palette.background2,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event_available,
              color: Colors.white,
            ),
            label: "프로그램",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books_outlined,
              color: Colors.white,
            ),
            label: "축제소개",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_outlined,
              color: Colors.white,
            ),
            label: "한줄평",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.error_outline,
              color: Colors.white,
            ),
            label: "실시간 정보",
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "초록색, 파란색, 빨간색 순으로 혼잡합니다." ,
              style: TextStyle(
                color: Palette.textColor1,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ParkingScore()));
                  },
                  child: Container(
                    width: 105,
                    height: 140,
                    decoration: BoxDecoration(
                      color: parkingScore.contains("confusion")
                          ? Palette.red
                          : parkingScore.contains("spare")
                          ? Palette.green
                          : Palette.background2,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "주차공간",
                          style: TextStyle(
                            color: Palette.textColor2,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.directions_car,
                          color: Palette.textColor2,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          parkingScore == "confusion"
                              ? "혼잡"
                              : parkingScore == "spare"
                              ? "쾌적"
                              : "여유",
                          style: TextStyle(
                            color: Palette.textColor2,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 105,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "화장실",
                        style: TextStyle(
                          color: Palette.textColor2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.wc_rounded,
                        color: Palette.textColor2,
                        size: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "쾌적",
                        style: TextStyle(
                          color: Palette.textColor2,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 105,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "프라이빗 도자관",
                        style: TextStyle(
                          color: Palette.textColor2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.account_balance_rounded,
                        color: Palette.textColor2,
                        size: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "쾌적",
                        style: TextStyle(
                          color: Palette.textColor2,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 105,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        " 둘레둘레\n도자흙공방",
                        style: TextStyle(
                          color: Palette.textColor2,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Icon(
                        Icons.store_mall_directory_outlined,
                        color: Palette.textColor2,
                        size: 45,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "쾌적",
                        style: TextStyle(
                          color: Palette.textColor2,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 105,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        " 도자네시풍속\n장난감 만들기",
                        style: TextStyle(
                          color: Palette.textColor2,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Icon(
                        Icons.smart_toy_outlined,
                        color: Palette.textColor2,
                        size: 45,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "쾌적",
                        style: TextStyle(
                          color: Palette.textColor2,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 105,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        " 자연주의\n소품 만들기",
                        style: TextStyle(
                          color: Palette.textColor2,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Icon(
                        Icons.maps_home_work,
                        color: Palette.textColor2,
                        size: 45,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "쾌적",
                        style: TextStyle(
                          color: Palette.textColor2,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 105,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "장작가마\n불집히기",
                        style: TextStyle(
                          color: Palette.textColor2,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Icon(
                        Icons.local_fire_department_outlined,
                        color: Palette.textColor2,
                        size: 45,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "쾌적",
                        style: TextStyle(
                          color: Palette.textColor2,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 105,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "공연",
                        style: TextStyle(
                          color: Palette.textColor2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.audiotrack_rounded,
                        color: Palette.textColor2,
                        size: 45,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "쾌적",
                        style: TextStyle(
                          color: Palette.textColor2,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 105,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "이색 퍼레이드",
                        style: TextStyle(
                          color: Palette.textColor2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.outlined_flag,
                        color: Palette.textColor2,
                        size: 45,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "쾌적",
                        style: TextStyle(
                          color: Palette.textColor2,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
