import 'package:festival/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Program extends StatefulWidget {
  const Program({Key? key}) : super(key: key);

  @override
  _ProgramState createState() => _ProgramState();
}

class _ProgramState extends State<Program> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Palette.background2,
        title: Text(
          "프로그램",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Palette.background,
      body: Center(
        child: ListView(
            scrollDirection: Axis.vertical,
            children: [ Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 200,
                    child: Text(
                      "<프라이빗도자관>\n직접 도예작가가 되어 만들어보는 나만의 체험 기물을 선택, 채색하여 원하는 곳에서 받아보는 추억 만들기 도자체험공간",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "image/ceramic2.jpg",
                      width: 170,
                      height: 170,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Image.asset(
                      "image/fire.jpg",
                      width: 170,
                      height: 150,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 200,
                    child: Text(
                      "<장작가마불지피기>\n도공들의 혼을 담는 불의 항연 실보공원 행사장에서 정성들여 빚은 이천 도예명인들의 도자기를 소성하는 불의 잔치, 막걸리 한잔에 목을 축여보세요!",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 200,
                    child: Text(
                      "<공연>\n내공연장과 미니공연장에서 다채로운 공연이 가득",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "image/festival.jpg",
                      width: 170,
                      height: 170,
                    ),
                  )
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
