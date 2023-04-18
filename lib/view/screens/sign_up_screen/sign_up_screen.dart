import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/SignIn.dart';
import 'package:bankapppp/view/home.dart';
import 'package:bankapppp/view/screens/sign_up_screen/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool value = true;
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
                padding: EdgeInsets.only(top: 35, left: 20, right: 270),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Inter",
                    fontSize: 22,
                  ),
                ),
              ),
              const CommonTextField(
                hintText: "Full Name",
                assetIcon: ImageAssests.fullName,
              ),
              const CommonTextField(
                hintText: "Email",
                assetIcon: ImageAssests.emailicon,
              ),
              const CommonTextField(
                hintText: "Phone Number",
                assetIcon: ImageAssests.phone,
              ),
              const CommonTextField(
                hintText: "Password",
                assetIcon: ImageAssests.lock,
              ),
              const CommonTextField(
                hintText: "Confirm Password",
                assetIcon: ImageAssests.lock,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        shape: const RoundedRectangleBorder(),
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            value = value;
                          });
                        }),
                    RichText(
                      text: const TextSpan(
                          text: 'By continuing you accept our ',
                          style:
                              TextStyle(color: Color(0xFFADA4A5), fontSize: 10),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Privacy Policy ',
                              style: TextStyle(
                                  color: Color(0xFFE8B80E),
                                  fontSize: 10,
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text: 'and ',
                              style: TextStyle(
                                color: Color(0xFFADA4A5),
                                fontSize: 10,
                              ),
                            ),
                            TextSpan(
                              text: 'term of Use',
                              style: TextStyle(
                                  color: Color(0xFFE8B80E),
                                  fontSize: 10,
                                  decoration: TextDecoration.underline),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 29,
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
                      "Sign Up",
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
                    "Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Inter",
                      fontSize: 12,
                      color: Color(0xFF475569),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const SignInScreen());
                    },
                    child: const Text(
                      "Sign-in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Inter",
                          fontSize: 14,
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
