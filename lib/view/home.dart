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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'ToMarchant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leadingWidth: 70,
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(ImageAssests.signequal)),
              color: lightIconColor,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Home",
          textAlign: TextAlign.center,
          style: CustomTextStyle.nameOfTextStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: lightIconColor,
              ),
              child: const Image(
                image: AssetImage(
                  ImageAssests.Notification,
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          width: .65.sw,
          backgroundColor: goldencolor,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 10.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30.h,
                      backgroundImage: AssetImage(ImageAssests.CircalAvator),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Adil Rehman",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp),
                        ),
                        Text(
                          "AdilRehman@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 8.sp),
                        ),
                      ],
                    ),
                    Image.asset(
                      ImageAssests.editicon,
                      color: Colors.white,
                      height: 15.h,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                ListTile(
                  leading: Image.asset(
                    ImageAssests.whitebellicon,
                    color: Colors.white,
                    height: 25.h,
                  ),
                  title: Text(
                    "Notifications",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 11.sp),
                  ),
                  trailing: Switch(
                    onChanged: (v) {},
                    value: false,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    ImageAssests.lock,
                    color: Colors.white,
                    height: 25.h,
                  ),
                  title: Text(
                    "Change Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 11.sp),
                  ),
                  trailing: Image.asset(
                    ImageAssests.whitearrowforwardicon,
                    color: Colors.white,
                    height: 15.h,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    ImageAssests.privacypolicyicon,
                    color: Colors.white,
                    height: 22.h,
                  ),
                  title: Text(
                    "Privacy Policy",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 11.sp),
                  ),
                  trailing: Image.asset(
                    ImageAssests.whitearrowforwardicon,
                    color: Colors.white,
                    height: 15.h,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    ImageAssests.abouticon,
                    color: Colors.white,
                    height: 18.h,
                  ),
                  title: Text(
                    "About App",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 11.sp),
                  ),
                  trailing: Image.asset(
                    ImageAssests.whitearrowforwardicon,
                    color: Colors.white,
                    height: 15.h,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    ImageAssests.logouticon,
                    color: Colors.white,
                    height: 20.h,
                  ),
                  title: Text(
                    "Log Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 11.sp),
                  ),
                  trailing: Image.asset(
                    ImageAssests.whitearrowforwardicon,
                    color: Colors.white,
                    height: 15.h,
                  ),
                ),
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 16),
                height: 20,
                width: 200,
                child: const Text(
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
