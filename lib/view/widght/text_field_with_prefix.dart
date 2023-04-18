import 'package:bankapppp/assest/assests-folder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWithPrefix extends StatelessWidget {
  final String prefixPath;
  final String label;
  final ValueChanged<String> onChanged;
  const TextFieldWithPrefix(
      {super.key,
      required this.prefixPath,
      required this.label,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 32, top: 16),
      child: Container(
        height: 48,
        child: TextField(
          onChanged: onChanged,
          style: const TextStyle(
              fontFamily: "Inter", fontWeight: FontWeight.w400, fontSize: 12),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 11.0, right: 16),
              child: Container(
                height: 13,
                width: 15,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(prefixPath),
                  ),
                ),
              ),
            ),
            hintText: label,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFFE6E6E6),
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xFF95999B),
                width: .5.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
