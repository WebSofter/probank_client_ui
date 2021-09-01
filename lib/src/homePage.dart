import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/paymentPage.dart';
import 'package:flutter_login_signup/src/reportPage.dart';
import 'package:flutter_login_signup/src/settingPage.dart';
import 'package:flutter_login_signup/src/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Widget/bezierContainer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Widget/slider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.white),
            ),
            Text('Назад',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white))
          ],
        ),
      ),
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //Text(
          //  title,
          //  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          //),
          SizedBox(
            height: 10,
          ),

          new Theme(
              data: new ThemeData(
                primaryColor: Colors.white,
                primaryColorDark: Colors.white,
              ),
              child: TextField(
                obscureText: isPassword,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(
                      color: Colors.white10,
                    )),
                    hintStyle: TextStyle(fontSize: 14.0, color: Colors.white70),
                    hintText: 'Введите ваш $title',
                    helperText: 'Введите ваш $title',
                    helperStyle: TextStyle(color: Colors.white70),
                    labelText: title,
                    labelStyle: TextStyle(color: Colors.white70),
                    // prefixIcon: const Icon(
                    //   Icons.person,
                    //   color: Colors.white,
                    // ),
                    prefixText: ' ',
                    suffixText: ' ',
                    suffixStyle: const TextStyle(color: Colors.white)),
              ))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color(0xff02675A).withAlpha(80),
                offset: Offset(0, 4),
                blurRadius: 5,
                spreadRadius: 1)
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff2DC2AF), Color(0xff2DC2AF)])),
      child: Text(
        'Вход',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _facebookButton() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff1959a9),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    topLeft: Radius.circular(5)),
              ),
              alignment: Alignment.center,
              child: Text('f',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400)),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2872ba),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    topRight: Radius.circular(5)),
              ),
              alignment: Alignment.center,
              child: Text('Log in with Facebook',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Register',
              style: TextStyle(
                  color: Color(0xff2DC2AF),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    var assetsImage = new AssetImage('assets/images/icon-logo.png');
    var image = new Image(image: assetsImage, fit: BoxFit.cover);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(child: image),
        SizedBox(
          width: 10,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'ПроБанк клиент',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ],
    );
    //SvgPicture.asset('assets/images/icon-logo.svg',);
    /*RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'd',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe46b10),
          ),
          children: [
            TextSpan(
              text: 'ev',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'rnz',
              style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
            ),
          ]),
    );
    */
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("логин"),
        _entryField("пароль", isPassword: true),
      ],
    );
  }

  Widget _topInfo() {
    return Container(
        padding: EdgeInsets.all(30),
        color: Color(0xffF9FAFB),
        child: Row(
          //textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            /*
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Ваш баланс',
                    textDirection: TextDirection.ltr,
                    overflow: TextOverflow.ellipsis),
            Text('₽ 43500',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff171D33))),
              ],
            ),
            */
            Text('Ваш баланс',
                textDirection: TextDirection.ltr,
                overflow: TextOverflow.ellipsis),
            Text('010115445154845484548',
                textDirection: TextDirection.ltr,
                overflow: TextOverflow.ellipsis)
          ],
        ));
  }

  Widget _user_icon() {
    return LimitedBox(
      child: SvgPicture.asset(
        'assets/images/profile_photo.svg',
        //color: Colors.black,
        width: 50,
        height: 50,
      ),
      maxHeight: 50,
      maxWidth: 50,
    );
  }

  Widget _header() {
    return Container(
        //padding: EdgeInsets.all(30),
        color: Color(0xffF9FAFB),
        child: Row(
          //textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('₽ 43500',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff171D33))),
            _user_icon()
          ],
        ));
  }

  Widget _infoTabs() {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20.0),
            DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          labelColor: Colors.green,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(text: 'Расходы'),
                            Tab(text: 'Пополнения'),
                          ],
                        ),
                      ),
                      Container(
                          height: 400, //height of TabBarView
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Container(
                              child: Center(
                                child: Text('Расходы...',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text('Пополнения...',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ]))
                    ])),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xF9FAFB), Color(0xF9FAFB)])),
      height: height,
      child: Stack(
        children: <Widget>[
          _topInfo(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .1),
                  _header(),
                  SizedBox(height: 50),
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: imageSliders,
                  ),
                  _infoTabs()
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
