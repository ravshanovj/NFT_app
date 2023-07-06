import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nft_app/view/navi_page.dart/home_page.dart';
import 'package:nft_app/view/navi_page.dart/profile_page.dart';
import 'package:nft_app/view/navi_page.dart/search_page.dart';
import 'package:nft_app/view/navi_page.dart/wallet_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List pages = [
    HomePage(),
    const SearchPage(),
    const WalletPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: ('Home'),
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Icon(Iconsax.category5),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Icon(Iconsax.search_normal_14),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Wallet',
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Icon(Iconsax.wallet_2),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Icon(Iconsax.user),
            ),
          ),
        ],
      ),
    );
  }
}
