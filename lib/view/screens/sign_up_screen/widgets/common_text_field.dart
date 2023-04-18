import 'package:flutter/material.dart';
import 'package:bankapppp/assest/assests-folder.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({ required this.hintText,
    super.key, required this.assetIcon,
  });
  final String hintText;
  final String  assetIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 32, top: 16),
      child: Container(
        height: 48,
        width: 315,
        child: TextField(
          style: const TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w400,
              fontSize: 12),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 11.0, right: 16),
              child: Container(
                height: 13,
                width: 15,
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(assetIcon),
                  ),
                ),
              ),
            ),
            hintText: hintText,
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                color: Color(0xFFE6E6E6),
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFF95999B),
                width: .5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}