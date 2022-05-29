import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festival/config/palette.dart';
import 'package:festival/screens/FirstPage.dart';
import 'package:festival/screens/Program.dart';
import 'package:festival/screens/festivalInf.dart';
import 'package:festival/screens/festivalInformation.dart';
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
  List pages = [
    firstPage(),
    Program(),
    FestivalInformation(),
    Comment(),
    festivalInf(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Palette.background2,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: "홈 화면",
          ),
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
      body: pages[_selectedIndex],
    );
  }
}
