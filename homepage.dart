import 'package:flutter/material.dart';
import 'package:proper/bottom_navigation_bar.dart';

import 'CartPage.dart';
import 'ShopPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DrawerHeader(child: Icon(Icons.star, size: 60)),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('S T A R T P A G E'),
                  onTap: () => Navigator.pushNamed(context, 'startpage'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('S E T T I N G S'),
                  onTap: () => Navigator.pushNamed(context, 'settingpage'),
                ),
                ListTile(
                  leading: Icon(Icons.info_outlined),
                  title: Text('A B O U T'),
                  onTap: () => Navigator.pushNamed(context, 'aboutpage'),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 330),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('P R O F I L E'),
                onTap: () => Navigator.pushNamed(context, 'profilepage'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
