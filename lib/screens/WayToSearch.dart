import 'package:festival/config/palette.dart';
import 'package:flutter/material.dart';

class WayToSearch extends StatelessWidget {
  const WayToSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.background,
        elevation: 0.0,
      ),
      backgroundColor: Palette.background,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "축제를 검색합니다.",
                style: TextStyle(
                  color: Palette.textColor1,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 1,
                height: 1,
                color: Palette.background2,
                indent: 40,
                endIndent: 40,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Palette.iconColor
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Palette.iconColor
                        ),
                      ),
                      hintText: "입력하세요",
                      hintStyle: TextStyle(
                        color: Palette.textColor1,
                      ),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Palette.textColor1,
                      ),
                    ),
                    autofocus: true,
                    cursorColor: Palette.iconColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Opacity(
                    opacity: 0.0,
                    child: ElevatedButton(
                        onPressed: (){},
                        child: Text(
                          "검색",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      style: ElevatedButton.styleFrom(
                        primary: Palette.background2
                      )
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){},
                      child: Text(
                        "검색",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Palette.background2
                      )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
