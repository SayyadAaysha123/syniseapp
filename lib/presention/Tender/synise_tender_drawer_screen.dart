import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/Tender/synise_faq_screen.dart';
import 'package:synise_project/presention/Tender/synise_view_submit_tenders_screen.dart';
import 'package:synise_project/presention/Tender/synise_agreement_screen.dart';
import 'package:synise_project/presention/Tender/synise_change_password_screen.dart';
import 'package:synise_project/presention/Tender/synise_feedback_screen.dart';
import 'package:synise_project/presention/Tender/synise_home_screen.dart';
import 'package:synise_project/presention/Tender/synise_logout_screen.dart';
import 'package:synise_project/presention/Tender/synise_my_profile_screen.dart';
import 'package:synise_project/presention/Tender/synise_register_complain_screen.dart';
import 'package:synise_project/presention/Tender/synise_view_bid_screen.dart';


class TenderDrawerScreen extends StatefulWidget {
  const TenderDrawerScreen({Key? key}) : super(key: key);

  @override
  State<TenderDrawerScreen> createState() => _TenderDrawerScreen();
}

class _TenderDrawerScreen extends State<TenderDrawerScreen> {
  String? _title;
  Widget? _widget;
  List<Widget>? _actions;


  @override
  void initState() {
    super.initState();

    _pageChange(0);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CommonColor.TENDER_BOX_TEXT,
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.0),
              child: IconButton(
                icon: Image.asset(
                  "assets/images/drawer_icon.png",
                  height: SizeConfig.screenHeight * 16,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip:
                MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            );
          },
        ),
      ),
      drawer: Padding(
        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.05),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
          ),
          child: Container(
              height: SizeConfig.screenHeight*0.98 ,
              width: SizeConfig.screenWidth*0.7,
              decoration: BoxDecoration(),
              child: _drawer()
          ),
        ),
      ),
      body: _widget,
    );
  }

  Drawer _drawer() {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
                title: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
                    child: const Image(
                      image: AssetImage("assets/images/applogo.png"),
                    ),
                  ),
                )
            ),

            Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
              child: ListTile(
                title: Text('Home',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                      fontFamily: 'Roboto_Medium'
                  ),),
                onTap: () {
                  _pageChange(0);
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              title: Text('My Profile',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('View & Submit Tenders',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('View Bid',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Change Password',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(4);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Register Complaint',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(5);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Feedback',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(6);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Agreement',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(7);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('FAQ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(8);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Logout',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(9);
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
    );
  }

  _pageChange(int page) {
    switch (page) {
      case 0:
        _widget = const TenderHomeScreen();
        _actions = [];
        break;
      case 1:
        _widget = const TenderMyProfileScreen();
        _actions = [];
        break;
      case 2:
        _widget = const ViewSubmitTenderHomeScreen();
        _actions = [];
        break;
      case 3:
        _widget = const TenderViewBidScreen();
        _actions = [];
        break;
      case 4:
        _widget = const TenderChangePasswordScreen();
        _actions = [];
        break;
      case 5:
        _widget = const TenderRegisterComplaintScreen();
        _actions = [];
        break;
      case 6:
        _widget = const TenderFeedbackScreen();
        _actions = [];
        break;
      case 7:
        _widget = const TenderAgreementScreen();
        _actions = [];
        break;
      case 8:
        _widget = const TenderFAQScreen();
        _actions = [];
        break;
      case 9:
        _widget = const TenderLogoutScreen();
        _actions = [];
        break;
    }

    setState(() {});
  }
}