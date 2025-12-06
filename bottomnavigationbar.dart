import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget{
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context){
    return Container(
      child: GNav(
        color: Theme.of(context).colorScheme.secondary,
        activeColor: Theme.of(context).colorScheme.primary,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade200,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(icon: Icons.home,
          text: 'shop',
          textColor: Colors.black,
          iconColor: Colors.white,
          borderRadius: BorderRadius.circular(25),),
          GButton(icon: Icons.shopping_bag_rounded,
          textColor: Colors.black,
          iconColor: Colors.white,
          text: 'cart', borderRadius: BorderRadius.circular(25))
        ],
      ),
    );
  }
}
