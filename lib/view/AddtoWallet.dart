import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/home.dart';
import 'package:bankapppp/view/widght/comandropDwon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'widght/comanTextField.dart';

class AddToWallet extends StatefulWidget {
  const AddToWallet({Key? key}) : super(key: key);

  @override
  State<AddToWallet> createState() => _AddToWalletState();
}

class _AddToWalletState extends State<AddToWallet> {
  String dropdownvalue = '10000';
  String dropdwval = 'Daily';
  var orientation, size, height, width;

  // List of items in our dropdown menu
  var items = [
    '10000',
    '2000',
    '30000',
    '40000',
    '50000',
  ];
  var Duration = [
    'Daily',
    'Weekly',
    'Monthly',
    'yearly',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            padding: EdgeInsets.all(10),
            width: 50,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: lightIconColor,
            ),
            child: Image(image: AssetImage(ImageAssests.Vector)),
          ),
        ),
        centerTitle: true,
        title: Container(
          height: 29,
          child: Text(
            "Add To Wallet",
            style: CustomTextStyle.nameOfTextStyle,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Container(
              padding: EdgeInsets.all(8),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: lightIconColor,
              ),
              child: Image(
                image: AssetImage(
                  ImageAssests.Notification,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                "Amount You Want to Transfer",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF575757)),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            CommonTextField(label: "Account Number", onChanged: (v) {}),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                "Select Bank Account",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF575757)),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            DropDwon(
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdwval = newValue!;
                });
              },
              label: 'Select Bank',
            ),
            SizedBox(
              height: 52,
            ),
            Center(
              child: Container(
                height: 46,
                width: 200,
                child: ElevatedButton(
                  child: Text('Transfer'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF019747),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 303,
                          width: 378,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()),
                                    );
                                  },
                                  child: Container(
                                    width: 41,
                                    height: 41,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageAssests.crossVector))),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 120, right: 120),
                                child: Container(
                                  height: 101,
                                  width: 113,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageAssests.Trueicon))),
                                ),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 60, right: 60),
                                child: Text(
                                  "Success!",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF069948)),
                                ),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 60, right: 60),
                                child: Text(
                                  "\$200 successfully added to your wallet ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF575757),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
