import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/home.dart';
import 'package:bankapppp/view/screens/forget_password_screen/forget_password_screen.dart';
import 'package:bankapppp/view/screens/sign_up_screen/sign_up_screen.dart';
import 'package:bankapppp/view/widght/comanTextField.dart';
import 'package:bankapppp/view/widght/text_field_with_prefix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 242,
                width: 341,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageAssests.splash),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.only(top: 35, left: 20),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Inter",
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              TextFieldWithPrefix(
                label: "Email",
                prefixPath: ImageAssests.emailicon,
                onChanged: (v) {},
              ),
              TextFieldWithPrefix(
                label: "Password",
                prefixPath: ImageAssests.lock,
                onChanged: (v) {},
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 30.h,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(right: 40.0)),
                    child: Text(
                      'Forget password?',
                      style: TextStyle(
                          fontFamily: "inter",
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          color: const Color((0xFFADA4A5))),
                    ),
                    onPressed: () {
                      Get.to(const ForgetPasswordScreen());
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 83, right: 76),
                child: SizedBox(
                  height: 50,
                  width: 216,
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      backgroundColor: greenColor,
                    ),
                    onPressed: () {
                      Get.to(const Home());
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter",
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Inter",
                      fontSize: 14,
                      color: Color(0xFF475569),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const SignUpScreen());
                    },
                    child: const Text(
                      "Sign-up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Inter",
                          fontSize: 16,
                          color: greenColor),
                    ),
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
