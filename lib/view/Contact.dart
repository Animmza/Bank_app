import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/Contatc2.dart';
import 'package:bankapppp/view/home.dart';
import 'package:bankapppp/view/widght/contact_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tocontact extends StatefulWidget {
  const Tocontact({Key? key}) : super(key: key);

  @override
  State<Tocontact> createState() => _TocontactState();
}

class _TocontactState extends State<Tocontact> {
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
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
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
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 222),
                    child: Text(
                      "Contact List",
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: greenColor),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 38, right: 37),
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
                          Expanded(
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
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 17),
                    child: Container(
                      height: 213,
                      width: 334,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.grey.shade300,
                              blurRadius: 10,
                            )
                          ]
                          // elevation: 1,
                          // shadowColor: Colors.grey.shade100,
                          ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 21,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 32, right: 295),
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 32),
                            child: Divider(
                              color: Color(0xFFDBDBDB),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          ContactWidget(),
                          SizedBox(
                            height: 21,
                          ),
                          ContactWidget(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 17),
                    child: Container(
                      height: 300,
                      width: 334,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            color: Colors.grey.shade300,
                            blurRadius: 10,
                          )
                        ],
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 32, right: 295),
                            child: Text(
                              "B",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 32),
                            child: Divider(
                              color: Color(0xFFDBDBDB),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ContactWidget(),
                          SizedBox(
                            height: 15,
                          ),
                          ContactWidget(),
                          SizedBox(
                            height: 15,
                          ),
                          ContactWidget(),
                          SizedBox(
                            height: 15,
                          ),
                          ContactWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
  //
}
