import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:festival/config/palette.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum Parking { confusion, spare, quiet }

class ParkingScore extends StatefulWidget {
  const ParkingScore({Key? key}) : super(key: key);

  @override
  State<ParkingScore> createState() => _ParkingScoreState();
}

class _ParkingScoreState extends State<ParkingScore> {
  Parking _parking = Parking.spare;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.background2,
        title: Text("실시간 정보 체크"),
        centerTitle: true,
        elevation: 0.0,
      ),
      backgroundColor: Palette.background,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 60,
              height: MediaQuery.of(context).size.height - 300,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.directions_car,
                        color: Palette.iconColor,
                        size: 35,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "주차공간",
                        style:
                            TextStyle(color: Palette.textColor1, fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RadioListTile(
                      title: Text("혼잡"),
                      secondary: Icon(Icons.sentiment_dissatisfied_rounded),
                      value: Parking.confusion,
                      groupValue: _parking,
                      onChanged: (value) {
                        setState(() {
                          _parking = value as Parking;
                        });
                      }),
                  RadioListTile(
                      secondary: Icon(Icons.sentiment_satisfied),
                      title: Text("여유"),
                      value: Parking.quiet,
                      groupValue: _parking,
                      onChanged: (value) {
                        setState(() {
                          _parking = value as Parking;
                        });
                      }),
                  RadioListTile(
                      title: Text("쾌적"),
                      secondary: Icon(Icons.sentiment_satisfied_alt_rounded),
                      value: Parking.spare,
                      groupValue: _parking,
                      onChanged: (value) {
                        setState(() {
                          _parking = value as Parking;
                        });
                      }),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Opacity(
                        opacity: 0.0,
                        child: Text(
                          "안녕"
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final parking = _parking;
                          createParking(parking: parking);
                        },
                        child: Text(
                          "반영하기",
                          style: TextStyle(color: Palette.textColor2),
                        ),
                        style:
                            ElevatedButton.styleFrom(primary: Palette.background2),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Future createParking({required Parking parking}) async {
    final docComments = FirebaseFirestore.instance.collection("parking").doc("parkingScore");
    final json = {
      "parking": describeEnum(parking)
    };

    await docComments.set(json);
    Navigator.pop(context);
  }
}
