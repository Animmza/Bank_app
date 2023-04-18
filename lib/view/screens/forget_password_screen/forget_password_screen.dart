import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/screens/reset_password_screen/reset_password_screen.dart';
import 'package:bankapppp/view/widght/text_field_with_prefix.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 242,
                  width: 341,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageAssests.splash),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35.h, left: 20.w),
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Inter",
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.h, left: 20.w, right: 20.w),
                child: Text(
                    'Don’t worry, If you forgot your password. We will reset your password in 2 minutes. Please provide the registered Email below',
                    style: TextStyle(fontSize: 11, color: Colors.black26)),
              ),
              Center(
                child: TextFieldWithPrefix(
                  label: "Email",
                  prefixPath: ImageAssests.emailicon,
                  onChanged: (v) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 17.h, left: 20.w, right: 20.w),
                child: Text(
                    'We will send a verification code on given email. Please enter the code to reser password.',
                    style: TextStyle(fontSize: 11, color: Colors.black26)),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
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
