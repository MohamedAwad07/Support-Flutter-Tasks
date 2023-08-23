import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/modules/HomePage/HomePage.dart';
import 'package:task3/modules/Orders%20Screen/OrdersScreen.dart';
import 'package:task3/modules/Profile%20Screen/ProfileScreen.dart';
import 'package:task3/modules/Vouchers%20Screen/VouchersScreen.dart';
import 'package:task3/modules/offers%20Screen/OffersScreen.dart';

class HomeLayout extends StatefulWidget {
   HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
 int currentIndx = 0;
 List<Widget> currentScreen = [
   HomePage(),
   OrdersScreen(),
   VouchersScreen(),
   OffersScreen(),
   ProfileScreen(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen[currentIndx],
        bottomNavigationBar :BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndx,
          selectedLabelStyle: TextStyle(
            color: Colors.orange.shade900,
          ),
          showSelectedLabels: true,
          elevation: 4.0,
          onTap: (index){
           setState(() {
             currentIndx = index;
           });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.orange.shade900,
              ),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_long,
                color: Colors.orange.shade900,
              ),
              label: 'Orders'
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons. discount_outlined,
                color: Colors.orange.shade900,
              ),
              label: 'vouchers '
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons. bookmark_add,
                color: Colors.orange.shade900,
              ),
              label: 'offers'
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
                color: Colors.orange.shade900,
              ),
              label: 'Profile'
            ),
          ],
        ),
    );
  }
}
