import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/ToBank2.dart';
import 'package:bankapppp/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tobank extends StatefulWidget {
  const Tobank({Key? key}) : super(key: key);

  @override
  State<Tobank> createState() => _TobankState();
}

class _TobankState extends State<Tobank> {
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
          width: 127,
          child: Text(
            "To Contact",
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
          children: [
            SizedBox(
              height: 196,
            ),
            Center(
              child: Container(
                height: 149,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(ImageAssests.Cross)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "No Account Added",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFADA4A5)),
              ),
            ),
            SizedBox(
              height: 185,
            ),
            Container(
              height: 46,
              width: 200,
              child: ElevatedButton(
                child: Text('Add Bank'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: greenColor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ToBank()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
