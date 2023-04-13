import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/view/Contatc2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 32,
          ),
          child: Container(
            decoration: BoxDecoration(),
            child: CircleAvatar(
              child: Image.asset(ImageAssests.pics),
            ),
          ),
        ),
        SizedBox(
          width: 14,
        ),
        Column(
          children: [
            Text(
              "Aason Adam",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF575757),
              ),
            ),
            Text(
              "AC: 213-4213-1",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF7E7E7E),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 89.0, right: 42),
          child: Container(
              height: 18,
              width: 18,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactNumber()),
                  );
                },
                child: Image.asset(ImageAssests.fullicon),
              )),
        )
      ],
    );
  }
}
