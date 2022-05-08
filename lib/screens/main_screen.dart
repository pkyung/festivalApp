import 'package:festival/config/palette.dart';
import 'package:flutter/material.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  _LoginSignUpScreenState createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isSignupScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: Stack(
        children: [
          //배경
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              color: Palette.background2,
              child: Container(
                padding: EdgeInsets.only(top: 90, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Welcome ",
                            style: TextStyle(
                              letterSpacing: 1.0,
                              fontSize: 25,
                              color: Palette.textColor2,
                            ),
                            children: [
                          TextSpan(
                            text: isSignupScreen ? "festival App" : "back",
                            style: TextStyle(
                              letterSpacing: 1.0,
                              fontSize: 25,
                              color: Palette.textColor2,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ])),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      isSignupScreen ? "Signup to continue" : "Signin to continue",
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 15,
                        color: Palette.textColor2,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          //텍스트 폼 필드
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              top: 180,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeIn,
                padding: EdgeInsets.only(top: 20),
                height: isSignupScreen ? 280 : 230,
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: !isSignupScreen
                                      ? Palette.textColor1
                                      : Palette.activecolor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: !isSignupScreen
                                    ? Colors.black
                                    : Palette.activecolor,
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: !isSignupScreen
                                      ? Palette.activecolor
                                      : Palette.textColor1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: !isSignupScreen
                                    ? Palette.activecolor
                                    : Colors.black,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    if(isSignupScreen)
                    Container(
                      margin: EdgeInsets.only(top: 20, right: 15, left: 15),
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_circle_outlined,
                                  color: Palette.iconColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Palette.textColor1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35),
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Palette.textColor1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35.0),
                                    )),
                                hintText: "이름을 입력하세요",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Palette.textColor1,
                                ),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: Palette.iconColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Palette.textColor1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35),
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Palette.textColor1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35.0),
                                    )),
                                hintText: "이메일을 입력하세요",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Palette.textColor1,
                                ),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  color: Palette.iconColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Palette.textColor1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35),
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Palette.textColor1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35.0),
                                    )),
                                hintText: "비밀번호를 입력하세요",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Palette.textColor1,
                                ),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    if(!isSignupScreen)
                    Container(
                      margin: EdgeInsets.only(top: 20,right: 15, left: 15),
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: Palette.iconColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Palette.textColor1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35),
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Palette.textColor1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35.0),
                                    )),
                                hintText: "아이디를 입력하세요",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Palette.textColor1,
                                ),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  color: Palette.iconColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Palette.textColor1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35),
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Palette.textColor1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35.0),
                                    )),
                                hintText: "비밀번호를 입력하세요",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Palette.textColor1,
                                ),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
          //전송버튼
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              top: isSignupScreen ? 420 : 370,
              right: 0,
              left: 0,
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Palette.textColor1,
                              Palette.textColor2,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 0.3))
                        ]),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
          //구글 로그인
          Positioned(
              top: MediaQuery.of(context).size.height - 150,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  Text(
                    isSignupScreen ? "or SignUp with" : "or SignIn with",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(155,40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        backgroundColor: Palette.textColor1
                      ),
                      icon: Icon(Icons.add),
                      label: Text("google"),
                  )
                ],
              )),
        ],
      ),
    );
  }
}