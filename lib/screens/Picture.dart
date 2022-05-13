import 'package:festival/config/palette.dart';
import 'package:festival/screens/HomePage.dart';
import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  const Picture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => homePage()
              )
          );
        },
        child: Container(
          child: Image.asset(
            "image/capture.jpg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
    ),
        ),
      )
    );
  }
}
