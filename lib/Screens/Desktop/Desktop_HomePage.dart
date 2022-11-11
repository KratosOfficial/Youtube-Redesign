import 'package:flutter/material.dart';
import 'package:youtuberedesined/Screens/Desktop/Pages/Desktop_Body.dart';
import 'package:youtuberedesined/Screens/Desktop/Pages/Desktop_Sidebar.dart';
import 'package:youtuberedesined/Utils/HelperClass.dart';
import 'package:youtuberedesined/Utils/Themes.dart';

class Desktop_HomePage extends StatefulWidget {
  const Desktop_HomePage({Key? key}) : super(key: key);

  @override
  State<Desktop_HomePage> createState() => _Desktop_HomePageState();
}

class _Desktop_HomePageState extends State<Desktop_HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: MyColors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
          child: Image.asset(
            "assets/icons/menu.png",
            width: 45,
          ),
        ),
        title: Row(
          children: [
            addHorizontalSpace(30),
            RichText(
              text: TextSpan(children: [
                TextSpan(text: "You", style: TextStyle(fontSize: 30,)),
                TextSpan(text: "Tube", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red)),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                padding: EdgeInsets.all(8),
                width: 800,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(500),
                ),
                child: Row(
                  children: [
                    addHorizontalSpace(10),
                    Text(
                      "Search",
                      style: TextStyle(
                          color: Colors.grey.withOpacity(0.6),
                          fontWeight: FontWeight.w300),
                    ),
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Image.asset("assets/icons/search.png"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: MyColors.black,
                borderRadius: BorderRadius.circular(500),
              ),
              child: Image.asset(
                "assets/icons/mic.png",
                color: Colors.white,
                width: 30,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(500),
              ),
              child: Image.asset("assets/icons/dashboard.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                  color: MyColors.black,
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/video.png",
                    color: Colors.white,
                    width: 35,
                  ),
                  addHorizontalSpace(10),
                  Text(
                    "New Video",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          ),
          CircleAvatar(
            radius: 30,
            child: ClipOval(
              child: Image.asset(
                "assets/images/profile.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          addHorizontalSpace(20),
        ],
      ),
      body: Row(
        children: [
          Expanded(flex:1, child: Desktop_Sidebar()),
          Expanded(flex: 6, child: Desktop_Body()),
        ],
      ),
    );
  }
}
