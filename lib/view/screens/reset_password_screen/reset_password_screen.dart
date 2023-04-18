import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/SignIn.dart';
import 'package:bankapppp/view/home.dart';
import 'package:bankapppp/view/screens/create_new_password_screen/create_new_password_screen.dart';
import 'package:bankapppp/view/screens/sign_up_screen/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';


class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                padding: EdgeInsets.only(top: 4, right: 67),
                child: Text(
                    'Please check your Email for Code, we have sent to you.',
                    style: TextStyle(fontSize: 11, color: Colors.black26)),
              ),
              SizedBox(
                height: 46,
              ),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 60,
                otpFieldStyle: OtpFieldStyle(backgroundColor: Colors.white, borderColor: Color(0xFFE8B80E), enabledBorderColor: Color(0xFFE8B80E),focusBorderColor: Color(0xFFE8B80E)),
                style: TextStyle(
                    fontSize: 32
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
              /*Padding(
                padding: const EdgeInsets.only(top: 46, left: 48),
                child: Row(
                  children: [
                    Container(
                      height: 65,
                      width: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(color: Color(0xFFE8B80E)),
                      ),
                      child: Center(
                          child: Text(
                        '7',
                        style: TextStyle(fontFamily: 'Inter', fontSize: 32),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 65,
                      width: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(color: Color(0xFFE8B80E)),
                      ),
                      child: Center(
                          child: Text(
                        '2',
                        style: TextStyle(fontFamily: 'Inter', fontSize: 32),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 65,
                      width: 66,
                      decoration: BoxDecoration(
                        color: Color(0xFFF7F6F6),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(color: Color(0xFF95999)),
                      ),
                      child: Center(
                          child: Text(
                        '0',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 32,
                            color: Color(0xFFC2C2C2)),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 65,
                      width: 66,
                      decoration: BoxDecoration(
                        color: Color(0xFFF7F6F6),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(color: Color(0xFF95999)),
                      ),
                      child: Center(
                          child: Text(
                        '7',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 32,
                            color: Color(0xFFE8E6EA)),
                      )),
                    ),
                  ],
                ),
              ),*/
              SizedBox(
                height: 50,
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
                      Get.to(const CreateNewPasswordScreen());
                    },
                    child: const Text(
                      "Done",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter",
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Center(
                child: Text(
                  'Send Again',
                  style: TextStyle(
                      color: Color(0xFFE8B80E),
                      fontSize: 14,
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
