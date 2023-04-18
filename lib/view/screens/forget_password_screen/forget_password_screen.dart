import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/SignIn.dart';
import 'package:bankapppp/view/home.dart';
import 'package:bankapppp/view/screens/reset_password_screen/reset_password_screen.dart';
import 'package:bankapppp/view/screens/sign_up_screen/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
              const Padding(
                padding: EdgeInsets.only(top: 35, left: 10, right: 170),
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Inter",
                    fontSize: 22,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 4, left: 28),
                child: Text(
                    'Don’t worry, If you forgot your password. We will reset your password in 2 minutes. Please provide the registered Email below',
                    style: TextStyle(fontSize: 11, color: Colors.black26)),
              ),
              const CommonTextField(
                hintText: "Email",
                assetIcon: ImageAssests.emailicon,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 17, left: 28),
                child: Text(
                    'We will send a verification code on given email. Please enter the code to reser password.',
                    style: TextStyle(fontSize: 11, color: Colors.black26)),
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
                      Get.to(const ResetPasswordScreen());
                    },
                    child: const Text(
                      "Get Code Now",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter",
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
