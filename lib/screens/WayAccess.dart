import 'package:festival/config/palette.dart';
import 'package:festival/screens/HomePage.dart';
import 'package:festival/screens/Picture.dart';
import 'package:festival/screens/WayToSearch.dart';
import 'package:flutter/material.dart';

class WayToAccess extends StatelessWidget {
  const WayToAccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.background,
        elevation: 0.0,
      ),
      backgroundColor: Palette.background,
      body: Center(
        child: Column(
          children: [
            Opacity(
              opacity: 0.6,
              child: Icon(
                Icons.wifi_tethering,
                color: Palette.iconColor,
                size: 60,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: Palette.background2,
              indent: 30,
              endIndent: 30,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "접속 방법을 선택해주세요.",
              style: TextStyle(color: Palette.textColor1, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: Palette.background2,
              indent: 30,
              endIndent: 30,
            ),
            SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Picture()
                    )
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 180,
                decoration: BoxDecoration(
                  color: Palette.background2,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.qr_code_scanner_rounded,
                        color: Colors.white,
                        size: 90,
                      ),
                      Text(
                        "QR 촬영",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WayToSearch()
                    )
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 180,
                decoration: BoxDecoration(
                  color: Palette.background2,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                        size: 90,
                      ),
                      Text(
                        "축제 검색",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
