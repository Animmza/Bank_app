import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/AddtoWallet.dart';
import 'package:bankapppp/view/Banktobank.dart';
import 'package:bankapppp/view/Contact.dart';
import 'package:bankapppp/view/RequestMoney.dart';
import 'package:bankapppp/view/ToBank.dart';
import 'package:bankapppp/view/Transactionhistory.dart';
import 'package:bankapppp/view/widght/home_grid_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'ToMarchant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(ImageAssests.signequal)),
            color: lightIconColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Home",
          textAlign: TextAlign.center,
          style: CustomTextStyle.nameOfTextStyle,
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
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 16),
                height: 20,
                width: 200,
                child: Text(
                  "Transfer Money",
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: greenColor),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeGridBox(
                      assetPath: 'assests/personicon.png',
                      onTap: () {
                        Get.to(Tocontact());
                      },
                      title: 'Add Contact'),
                  HomeGridBox(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tobank()),
                      );
                    },
                    assetPath: 'assests/bank.png',
                    title: 'To Bank',
                  ),
                  HomeGridBox(
                    onTap: () {
                      Get.to(bankTobank());
                    },
                    assetPath: 'assests/banktobank.png',
                    title: 'Bank to Bank',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeGridBox(
                    onTap: () {
                      Get.to(const RequestMoney());
                    },
                    assetPath: 'assests/request_money.png',
                    title: 'Request Money',
                  ),
                  HomeGridBox(
                    onTap: () {
                      Get.to(ToMarchant());
                    },
                    assetPath: 'assests/mechant.png',
                    title: 'To Merchant',
                  ),
                  SizedBox(
                    width: 105,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 16),
                height: 20,
                width: 200,
                child: Text(
                  "Add Money",
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: greenColor),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeGridBox(
                      onTap: () {
                        Get.to(TransactionHistory());
                      },
                      assetPath: 'assests/transactionhistory.png',
                      title: 'Transaction History'),
                  HomeGridBox(
                    onTap: () {
                      Get.to(AddToWallet());
                    },
                    assetPath: 'assests/wallet.png',
                    title: 'Add to Wallet',
                  ),
                  SizedBox(
                    width: 105,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
