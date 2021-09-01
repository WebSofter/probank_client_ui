import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/paymentPage.dart';
import 'package:flutter_login_signup/src/reportPage.dart';
import 'package:flutter_login_signup/src/settingPage.dart';
import 'package:flutter_login_signup/src/signup.dart';
import 'package:flutter_login_signup/src/homePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Widget/bezierContainer.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int selectedPage = 0;
  final _pageOptions = [HomePage(), PaymentPage(), ReportPage(), SettingPage()];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPage,
          onTap: (int index) {
            setState(() {
              selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  width: 25,
                  height: 25,
                  child: SvgPicture.asset(selectedPage == 0
                      ? "assets/images/icon_home_active.svg"
                      : "assets/images/icon_home.svg"),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Container(
                  width: 25,
                  height: 25,
                  child: SvgPicture.asset(selectedPage == 1
                      ? "assets/images/icon_payment_active.svg"
                      : "assets/images/icon_payment.svg"),
                ),
                label: 'Payment'),
            BottomNavigationBarItem(
                icon: Container(
                  width: 25,
                  height: 25,
                  child: SvgPicture.asset(selectedPage == 2
                      ? "assets/images/icon_report_active.svg"
                      : "assets/images/icon_report.svg"),
                ),
                label: 'Report'),
            BottomNavigationBarItem(
                icon: Container(
                  width: 25,
                  height: 25,
                  child: SvgPicture.asset(selectedPage == 3
                      ? "assets/images/icon_setting_active.svg"
                      : "assets/images/icon_setting.svg"),
                ),
                label: 'Setting')
          ],
        ),
        body: _pageOptions[selectedPage]);
  }
}
