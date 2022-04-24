import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senti/Views/Senti/home/home.dart';
import 'package:senti/Views/Senti/recipients/recipients_list.dart';
import 'package:senti/constants.dart';

class SentiNavBar extends StatefulWidget {
  const SentiNavBar({Key? key}) : super(key: key);

  @override
  State<SentiNavBar> createState() => _SentiNavBarState();
}

class _SentiNavBarState extends State<SentiNavBar> {
  int _selectedIndex = 0;
  List<Widget> _screens = [
    SentiHome(),
    RecepientsList(),
    SentiHome(),
    SentiHome(),
  ];
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        controller: _pageController,
        itemCount: _screens.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _screens[index];
        },
      ),
      bottomNavigationBar: Container(
        //padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 15)]),
        child: SafeArea(
          bottom: Platform.isAndroid,
          child: BottomNavigationBar(
            selectedFontSize: 12,
            unselectedFontSize: 12,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: const Color(0xff717E95),
            selectedItemColor: Constants.primaryColor,
            // selectedLabelStyle: TextStyle(
            //   color: Constants.primaryColor,
            //   fontFamily: "Montserrat",
            //   fontWeight: FontWeight.w600,
            // ),
            // unselectedLabelStyle: const TextStyle(
            //   color: Color(0XFFF808689),
            //   fontFamily: "Montserrat",
            //   fontWeight: FontWeight.w600,
            // ),
            iconSize: 25,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
                _screens[index];
                _pageController.jumpToPage(index);
              });
            },
            currentIndex: _selectedIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person_2), label: "Group"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.gift), label: "Gifts"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet_outlined),
                  label: "Wallet"),
            ],
          ),
        ),
      ),
    );
  }
}
