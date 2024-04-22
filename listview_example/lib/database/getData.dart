import 'package:flutter/material.dart';
import 'package:listview_example/Modal/user.dart';

class Database{
  static List<User> generateData(){
    List<User> usersList = [];
    for(int i = 0 ; i < 10 ; i++) {
      usersList.add(User(Icons.person, "Ali", "032312312" , true));
      usersList.add(User(Icons.arrow_left, "Home", "0322231" ,false));
      usersList.add(User(Icons.g_mobiledata, "Work", "032354675", true));
      usersList.add(User(Icons.wallet, "Friend", "033336546",false));
    }
    return usersList;
  }
}