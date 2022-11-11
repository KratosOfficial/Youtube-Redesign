import 'package:flutter/material.dart';
import 'package:youtuberedesined/Utils/Themes.dart';
import 'package:youtuberedesined/Utils/videos.dart';

class Mobile_Dashboard extends StatefulWidget {
  const Mobile_Dashboard({Key? key}) : super(key: key);

  @override
  State<Mobile_Dashboard> createState() => _Mobile_DashboardState();
}

class _Mobile_DashboardState extends State<Mobile_Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.innercolor,
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 1.5),
                itemBuilder: (context, indes) {
                  return videos();
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
