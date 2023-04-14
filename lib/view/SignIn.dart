import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 242,
                width: 341,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageAssests.splash),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20, right: 270),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Inter",
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28, right: 32, top: 16),
                child: Container(
                  height: 48,
                  width: 315,
                  child: TextField(
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 11.0, right: 16),
                        child: Container(
                          height: 13,
                          width: 15,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageAssests.emailicon),
                            ),
                          ),
                        ),
                      ),
                      hintText: "Email",
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          color: Color(0xFFE6E6E6),
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFF95999B),
                          width: .5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28, right: 32, top: 16),
                child: Container(
                  height: 48,
                  width: 315,
                  child: TextField(
                    style: const TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 11.0, right: 16),
                        child: Container(
                          height: 13,
                          width: 15,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageAssests.lock),
                            ),
                          ),
                        ),
                      ),
                      hintText: "Password",
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          color: Color(0xFFE6E6E6),
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFF95999B),
                          width: .5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 30,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(right: 40.0)),
                    child: Text(
                      'Forget password?',
                      style: TextStyle(
                          fontFamily: "inter",
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: const Color((0xFFADA4A5))),
                    ),
                    onPressed: () async {
                      const String _url = "https://www.geeksforgeeks.org";
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 83, right: 76),
                child: SizedBox(
                  height: 50,
                  width: 216,
                  child: TextButton(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter",
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      backgroundColor: greenColor,
                    ),
                    onPressed: () {
                      Get.to(Home());
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Inter",
                      fontSize: 12,
                      color: Color(0xFF475569),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Sign-up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Inter",
                        fontSize: 14,
                        color: greenColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
