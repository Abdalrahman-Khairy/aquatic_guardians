import 'package:ag/profile/profile.dart';
import 'package:ag/search/search.dart';
import 'package:flutter/cupertino.dart';

import 'explore/explor.dart';
import 'home_page/home_page.dart';

class MyAppProvider extends ChangeNotifier{
int index= 0;
List<Widget> tabs = [
  const HomePage(),
  const Search(),
  const Explore(),
  const Profile(),
];
onTap(value){
  index=value;
  notifyListeners();
}
}