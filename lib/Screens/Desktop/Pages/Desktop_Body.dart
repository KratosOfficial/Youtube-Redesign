import 'package:flutter/material.dart';
import 'package:youtuberedesined/Screens/Desktop/Pages/Widget/VideoGrid.dart';
import 'package:youtuberedesined/Utils/HelperClass.dart';
import 'package:youtuberedesined/Utils/Themes.dart';

class Desktop_Body extends StatefulWidget {
  const Desktop_Body({Key? key}) : super(key: key);

  @override
  State<Desktop_Body> createState() => _Desktop_BodyState();
}

class _Desktop_BodyState extends State<Desktop_Body> {
  List Categories = [
    "All",
    "Music",
    "Gaming",
    "Sports",
    "Movies",
    "News",
    "Live",
    "Fashion",
    "Music",
    "Gaming",
    "Sports",
    "Movies",
    "News",
    "Live",
    "Fashion",
    "Gaming",
    "Sports",
    "Movies",
    "News",
    "Live",
    "Fashion",
  ];
  List Live = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            thickness: 0.5,
            color: Colors.grey[500],
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
                itemCount: Categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(Categories[index]),
                      ),
                    ),
                  );
                }),
          ),
          addVerticalSpace(10),
          Divider(
            thickness: 0.5,
            color: Colors.grey[500],
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
                itemCount: Live.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return LiveData(
                    images: Live[index],
                  );
                }),
          ),
          addVerticalSpace(10),
          Expanded(child: VideoGrid()),
        ],
      ),
    );
  }

  Widget LiveData({images}) {
    return Stack(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  images,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            addHorizontalSpace(40),
          ],
        ),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 2)),
            height: 15,
            width: 15,
          ),
        ),
      ],
    );
  }
}
