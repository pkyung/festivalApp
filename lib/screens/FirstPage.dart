import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../config/palette.dart';
import 'festivalInf.dart';
import 'oneComment.dart';

class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  final _authentication = FirebaseAuth.instance;
  User? loggedUser;
  String parkingScore = "";
  Future<dynamic> parkingScore1 = FirebaseFirestore.instance
      .collection("parking")
      .doc("parkingScore")
      .get()
      .then((DocumentSnapshot value) => (value.data()! as Map)["parking"]);


  @override
  void didChangeDependencies() {
    setState(() {
      _parkingscore();
    });
    print(parkingScore);
    print(parkingScore1);
  }

  Future<dynamic> _parkingscore() async {
    parkingScore = await parkingScore1;
    print(parkingScore);
    return parkingScore;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _authentication.currentUser;
      if (user != null) {
        loggedUser = user;
        print(loggedUser!.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          IconButton(
              onPressed: () {
                _authentication.signOut();
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Palette.background,
              ))
        ],
      ),
      backgroundColor: Palette.background,
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "지금 축제 상황은?",
                style: TextStyle(
                  color: Palette.textColor1,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => festivalInf()));
                },
                child: Text(
                  "자세히보기 >",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(vertical: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
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
                SizedBox(
                  width: 20,
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
                SizedBox(
                  width: 20,
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
                SizedBox(
                  width: 20,
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
                SizedBox(
                  width: 20,
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
                SizedBox(
                  width: 20,
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
                SizedBox(
                  width: 20,
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
                SizedBox(
                  width: 20,
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
                SizedBox(
                  width: 20,
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
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
            height: 1,
            color: Palette.background2,
            indent: 10,
            endIndent: 10,
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 250,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "오늘의 한줄평",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.textColor1,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Comment()));
                        },
                        child: Text(
                          "자세히보기 >",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "\" " + "Incheon is good place" + " \"",
                    style: TextStyle(
                      fontSize: 18,
                      color: Palette.textColor1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 1,
                    height: 1,
                    color: Palette.background2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "가장 최근 글",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Palette.textColor1,
                          fontSize: 15,
                        ),
                      ),
                      new Opacity(
                        opacity: 0.0,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "자세히보기 >",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "\" 걸어다니면서 관람하기엔 너무 더웠음 \" ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Palette.textColor1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
          )
        ],
      ),
    );
  }
}
