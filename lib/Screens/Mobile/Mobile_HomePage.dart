import 'package:flutter/material.dart';
import 'package:youtuberedesined/Screens/Mobile/Mobile_Dashboard.dart';
import 'package:youtuberedesined/Screens/Mobile/Mobile_Library.dart';
import 'package:youtuberedesined/Utils/HelperClass.dart';
import 'package:youtuberedesined/Utils/Themes.dart';

class Mobile_HomePage extends StatefulWidget {
  const Mobile_HomePage({Key? key}) : super(key: key);

  @override
  State<Mobile_HomePage> createState() => _Mobile_HomePageState();
}

class _Mobile_HomePageState extends State<Mobile_HomePage> {
  int selectedIndex = 0;

  Widget getFragment() {
    if (selectedIndex == 0) {
      return Mobile_Dashboard();
    } else if (selectedIndex == 3) {
      return Mobile_library();
    }
    return Mobile_Dashboard();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          title: RichText(
        text: TextSpan(children: [
          TextSpan(text: "You", style: TextStyle(fontSize: 20, color: Colors.black)),
          TextSpan(
              text: "Tube",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20)),
        ]),
      ),
      actions: [
        Image.asset("assets/icons/search.png", color: Colors.black, width: 30,),
        addHorizontalSpace(20),
        Image.asset("assets/icons/notification.png", color: Colors.black, width: 30,),
        addHorizontalSpace(20),
        CircleAvatar(
          radius: 20,
          child: ClipOval(
            child: Image.asset(
              "assets/images/profile.png",
              fit: BoxFit.cover,
            ),
          ),

        ),
        addHorizontalSpace(10),
      ],),
body: getFragment(),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: MyColors.blue,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("assets/icons/dashboard.png" , width: 30,),
                label: "",
                activeIcon: Image.asset("assets/icons/dashboard.png", width: 30, color: MyColors.blue,)),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/explore.png",  width: 35,),
              label: "",
              activeIcon:Image.asset("assets/icons/explore.png",  width: 35, color:MyColors.blue,),),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/subscription.png",  width: 35,),
              label: "",
              activeIcon:Image.asset("assets/icons/subscription.png",  width: 35, color: MyColors.blue,),),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/library.png",  width: 35,),
              label: "",
              activeIcon:Image.asset("assets/icons/library.png",  width: 35, color: MyColors.blue,),),
          ],
          onTap: (val) {
            selectedIndex = val;
            setState(() {});
          },
          currentIndex: selectedIndex,
        ),
    );
  }
}
