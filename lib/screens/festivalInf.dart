import 'package:festival/screens/ParkingScore.dart';
import 'package:flutter/material.dart';

import '../config/palette.dart';

class festivalInf extends StatefulWidget {
  const festivalInf({Key? key}) : super(key: key);

  @override
  _festivalInfState createState() => _festivalInfState();
}

class _festivalInfState extends State<festivalInf> {
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
              "버튼을 누르면 실시간 정보를 반영할 수 있습니다.",
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
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ParkingScore()
                        )
                    );
                  },
                  child: Container(
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
          ],
        ),
      ),
    );
  }
}
