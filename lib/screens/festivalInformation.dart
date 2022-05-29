import 'package:festival/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FestivalInformation extends StatefulWidget {
  const FestivalInformation({Key? key}) : super(key: key);

  @override
  _FestivalInformationState createState() => _FestivalInformationState();
}

class _FestivalInformationState extends State<FestivalInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background2,
        title: Text(
          "축제 소개",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: ListView(
            scrollDirection: Axis.vertical,
            children: [
          Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Image.asset(
                "image/ceramicFest.jpg",
                width: MediaQuery.of(context).size.width - 200,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                    )),
                padding:
                    EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 10),
                width: MediaQuery.of(context).size.width - 70,
                child: Text(
                  "<주제>\n이천 도자기 축제는 우수한 이천 도자기를 세계에 알리고 전통 도자문화의 저면확대 및 지역 경제 활성화를 위한 목적으로 해마다 한달 여간 이천시도자기축제 추진 위원회의 주관으로 매년 한달간 열리고 있는 문화 축제이다.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                    )),
                padding:
                    EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 10),
                width: MediaQuery.of(context).size.width - 70,
                child: Text(
                  "<역사>\n이천 도자기 축제는 1987년 처음 시작하였으며 외국인들의 참여로 국제적인 축제로 거듭나고 있다.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                    )),
                padding:
                    EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 10),
                width: MediaQuery.of(context).size.width - 70,
                child: Text(
                  "<축제에서>\n축제에서는 도자기 전시를 비롯하여 도자세시풍속 장난감 만들기 체험, 이색 퍼레이드, 장작가마 불 지피기 등의 프로그램이 운영된다. 이천 도자기 축제를 통해 가치를 인정받는 이천 도자기에 대한 홍보를 진행하며, 전통 도자문화의 저변 확대와 지역 경제의 활성화를 도모하고 있다. ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ]),
      ),
    );
  }
}
