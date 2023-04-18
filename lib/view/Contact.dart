import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/Contatc2.dart';
import 'package:bankapppp/view/home.dart';
import 'package:bankapppp/view/widght/contact_widget.dart';
import 'package:bankapppp/view/widght/contacts_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Tocontact extends StatefulWidget {
  const Tocontact({Key? key}) : super(key: key);

  @override
  State<Tocontact> createState() => _TocontactState();
}

class _TocontactState extends State<Tocontact> {
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Text(
                      "Contact List",
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: greenColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 38, right: 37),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFEFEFEF),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          splashColor: Color(0xFF8A8A8D),
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                        const Expanded(
                          child: TextField(
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.go,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15),
                                hintText: "Type here"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const ContactsListWidget(label: "A", count: 2),
                const ContactsListWidget(label: "B", count: 3),
                const ContactsListWidget(label: "C", count: 3),
              ],
            ),
          ),
        ));
  }
  //
}
