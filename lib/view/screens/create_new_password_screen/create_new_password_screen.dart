import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/screens/reset_password_screen/reset_password_screen.dart';
import 'package:bankapppp/view/widght/text_field_with_prefix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  bool value = true;
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
                padding: EdgeInsets.only(top: 35, left: 20.w),
                child: Text(
                  "Create New Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Inter",
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4, left: 20.w),
                child: Text('Please write your new password.',
                    style: TextStyle(fontSize: 11, color: Colors.black26)),
              ),
              Center(
                child: TextFieldWithPrefix(
                  label: "Password",
                  prefixPath: ImageAssests.lock,
                  onChanged: (v) {},
                ),
              ),
              Center(
                child: TextFieldWithPrefix(
                  label: 'Retype Password',
                  prefixPath: ImageAssests.lock,
                  onChanged: (v) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      side: BorderSide(width: 1, color: Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      value: value,
                      onChanged: (value) {
                        setState(
                          () {
                            value = value;
                          },
                        );
                      },
                    ),
                    Text(
                      'Show Password',
                      style: TextStyle(fontSize: 12, color: Color(0xFFADA4A5)),
                    )
                  ],
                ),
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
