
import 'package:flutter/material.dart';
import 'package:konko_maji/messages.dart';
import 'package:konko_maji/profile.dart';

import 'customenevbar.dart';

class NevBar extends StatefulWidget {
  @override
  _NevBar createState() => _NevBar();
}

class _NevBar extends State<NevBar>
{
  int _selectedIndex = 2; //default index

  List<Widget> _widgetOptions = [
    Text('Home'),
    Text('Account'),
    Messages(),
    Profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: Color.fromRGBO(233, 64, 87, 1),
        backgroundColor: Color(0xFFF3F3F3),
        currentIndex: _selectedIndex,
        unselectedIconSize: 15,
        selectedIconSize: 20,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        // gradient: LinearGradient(
        //   colors: [Colors.pink, Colors.yellow],
        // ),
        customBottomBarItems: [
          CustomBottomBarItems(
            image: 'assets/images/Group 25.svg',
           // icon: Icons.ice_skating,

          ),
          CustomBottomBarItems(
            image: 'assets/images/indicator.svg',
            //icon: Icons.account_box_outlined,
          ),
          CustomBottomBarItems(
              image: 'assets/images/message.svg',
              //icon: Icons.calendar_today_outlined
            ),
          CustomBottomBarItems(
            image: 'assets/images/people.svg',
            //icon: Icons.card_giftcard_rounded,
          ),

        ],
      ),
    );
  }
}