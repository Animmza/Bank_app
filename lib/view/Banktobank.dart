import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/home.dart';
import 'package:bankapppp/view/widght/comanTextField.dart';
import 'package:bankapppp/view/widght/comandropDwon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widght/CommanBottamStheet.dart';

class bankTobank extends StatefulWidget {
  const bankTobank({Key? key}) : super(key: key);

  @override
  State<bankTobank> createState() => _bankTobankState();
}

class _bankTobankState extends State<bankTobank> {
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
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
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
            "Bank To Bank",
            style: CustomTextStyle.nameOfTextStyle,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(ImageAssests.Notification)),
                color: lightIconColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 23,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 310),
              child: Text(
                'From',
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
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
              label: '',
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 310),
              child: Text(
                'To',
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
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
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 150),
              child: Text(
                'Merchant’s Account Number',
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            CommonTextField(label: "Type here", onChanged: (v) {}),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 260),
              child: Text(
                'View Details',
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFE8B500),
                    decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 170),
              child: Text(
                'Amount You Want to Send',
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            CommonTextField(label: "Type here", onChanged: (v) {}),
            SizedBox(
              height: 33,
            ),
            Container(
              height: 46,
              width: 200,
              child: ElevatedButton(
                child: Text('Send'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF019747),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return BottamSheet();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
