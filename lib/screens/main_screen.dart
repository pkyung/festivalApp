import 'package:festival/config/palette.dart';
import 'package:festival/screens/HomePage.dart';
import 'package:festival/screens/WayAccess.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  _LoginSignUpScreenState createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  final _authentication = FirebaseAuth.instance;

  bool isSignupScreen = true;
  final _formKey = GlobalKey<FormState>();
  String username = "";
  String userEmail = "";
  String userPassword = "";

  void _tryValidation(){
    final isValid = _formKey.currentState!.validate();
    if(isValid){
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: Stack(
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
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: 40),
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
                                    "로그인",
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
                                    "회원가입",
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
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  key: ValueKey(1),
                                  onSaved: (value){
                                    userEmail = value!;
                                  },
                                  onChanged: (value){
                                    username = value;
                                  },
                                  validator: (value){
                                    if(value!.isEmpty || value.length < 4){
                                      return "Please enter at least 4 characters";
                                    }
                                    return null;
                                  },
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
                                  keyboardType: TextInputType.emailAddress,
                                  key: ValueKey(2),
                                  onSaved: (value){
                                    userEmail = value!;
                                  },
                                  onChanged: (value){
                                    userEmail = value;
                                  },
                                  validator: (value){
                                    if(value!.isEmpty || !value.contains('0')){
                                      return "Please enter a valid email address";
                                    }
                                    return null;
                                  },
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
                                  key: ValueKey(3),
                                  onSaved: (value){
                                    userPassword = value!;
                                  },
                                  onChanged: (value){
                                    userPassword = value;
                                  },
                                  validator: (value){
                                    if(value!.isEmpty || value.length < 6){
                                      return "Password must be at least 7 characters long";
                                    }
                                    return null;
                                  },
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
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  key: ValueKey(4),
                                  onSaved: (value){
                                    userEmail = value!;
                                  },
                                  onChanged: (value){
                                    userEmail = value;
                                  },
                                  validator: (value){
                                    if(value!.isEmpty || value.length < 4){
                                      return "Please enter at least 4 characters";
                                    }
                                    return null;
                                  },
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
                                  key: ValueKey(5),
                                  onSaved: (value){
                                    userPassword = value!;
                                  },
                                  onChanged: (value){
                                    userPassword = value;
                                  },
                                  validator: (value){
                                    if(value!.isEmpty || value.length < 6){
                                      return "Password must be at least 7 characters long";
                                    }
                                    return null;
                                  },
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
                    child: GestureDetector(
                      onTap: () async {
                        if(isSignupScreen){
                          _tryValidation();
                          try {
                            final newUser = await _authentication
                                .createUserWithEmailAndPassword(
                              email: userEmail,
                              password: userPassword,
                            );
                            if(newUser.user != null){
                              Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                      builder: (context) => homePage()
                                  )
                              );
                            }
                          }catch(e){
                            print(e);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:Text(
                                  "Please check your email and password"
                                ),
                                backgroundColor: Colors.black,
                              )
                            );
                          }
                        }
                        if(!isSignupScreen) {
                          _tryValidation();
                          try {
                            final newUser = await _authentication
                                .signInWithEmailAndPassword(
                                email: userEmail,
                                password: userPassword
                            );
                            if (newUser.user != null) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WayToAccess()
                                  )
                              );
                            }
                          } catch(e){
                            print(e);
                          }
                        }


                      },
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
      ),
    );
  }
}
