import 'package:flutter/material.dart';
import 'package:youtuberedesined/Utils/HelperClass.dart';
import 'package:youtuberedesined/Utils/Themes.dart';
import 'package:youtuberedesined/Utils/videos.dart';

class VideoGrid extends StatefulWidget {
  const VideoGrid({Key? key}) : super(key: key);

  @override
  State<VideoGrid> createState() => _VideoGridState();
}

class _VideoGridState extends State<VideoGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.innercolor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
      ),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, childAspectRatio: 1.5),
          itemBuilder: (context, index) {
            return videos();
          }),
    );
  }
}
