import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeGridBox extends StatelessWidget {
  final Function() onTap;
  final String assetPath;
  final String title;
  const HomeGridBox({
    super.key,
    required this.assetPath,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        width: 105,
        height: 101,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.center,
              begin: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 231, 202, 97),
                Color(0xFFE8B500),
              ]),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              assetPath,
              height: 40,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
