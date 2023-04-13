import "package:bankapppp/assest/assests-folder.dart";
import "package:bankapppp/res/colors.dart";
import "package:bankapppp/view/home.dart";
import "package:bankapppp/view/widght/CommanBottamStheet.dart";
import "package:bankapppp/view/widght/comanTextField.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class ToBank extends StatefulWidget {
  const ToBank({Key? key}) : super(key: key);

  @override
  State<ToBank> createState() => _ToBankState();
}

class _ToBankState extends State<ToBank> {
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
            "To Bank",
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
              height: 47,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 233),
              child: Text(
                "New Account",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFADA4A5)),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            CommonTextField(label: "Account Number", onChanged: (v) {}),
            SizedBox(
              height: 15,
            ),
            CommonTextField(label: "Account Holder Name", onChanged: (v) {}),
            SizedBox(
              height: 15,
            ),
            CommonTextField(label: "Routing Number", onChanged: (v) {}),
            SizedBox(
              height: 15,
            ),
            CommonTextField(label: "Name of Bank", onChanged: (v) {}),
            SizedBox(
              height: 15,
            ),
            CommonTextField(
                label: "Phone Number ( Optional )", onChanged: (v) {}),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 46,
              width: 200,
              child: ElevatedButton(
                  child: Text('Add Bank'),
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
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
