import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festival/config/palette.dart';
import 'package:festival/screens/festivalInf.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'oneComment.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final _authentication = FirebaseAuth.instance;
  User? loggedUser;

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
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.directions_car,
                            color: Palette.textColor2,
                          ),
                          Text(
                            "주차공간",
                            style: TextStyle(
                              color: Palette.textColor2,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.emoji_emotions_outlined,
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
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.directions_car,
                            color: Palette.textColor2,
                          ),
                          Text(
                            "주차공간",
                            style: TextStyle(
                              color: Palette.textColor2,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.emoji_emotions_outlined,
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
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.directions_car,
                            color: Palette.textColor2,
                          ),
                          Text(
                            "주차공간",
                            style: TextStyle(
                              color: Palette.textColor2,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.emoji_emotions_outlined,
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
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.directions_car,
                            color: Palette.textColor2,
                          ),
                          Text(
                            "주차공간",
                            style: TextStyle(
                              color: Palette.textColor2,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.emoji_emotions_outlined,
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
                  decoration: BoxDecoration(
                    color: Palette.background2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.directions_car,
                            color: Palette.textColor2,
                          ),
                          Text(
                            "주차공간",
                            style: TextStyle(
                              color: Palette.textColor2,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.emoji_emotions_outlined,
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
                    "\" " +
                        "Incheon is good place" +
                        " \"",
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
