import 'package:ag/explore/explor.dart';
import 'package:ag/home_page/home_page.dart';
import 'package:ag/profile/profile.dart';
import 'package:ag/provider.dart';
import 'package:ag/search/search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyAppProvider>(context);
    return Scaffold(
      body: provider.tabs[provider.index],
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlueAccent.withOpacity(0.5),
        child: BottomNavigationBar(
          currentIndex: provider.index,
          type: BottomNavigationBarType.fixed,
          unselectedIconTheme: const IconThemeData(color: Colors.black),
          selectedIconTheme: const IconThemeData(
            color: Colors.white70,
            size: 35,
          ),
          selectedLabelStyle: const TextStyle(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
          onTap: (value){
            provider.onTap(value);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Profile"),
          ],
        ),
      ),
    );
  }
}

List<Widget> tabs = [
  const HomePage(),
  const Search(),
  const Explore(),
  const Profile(),
];
