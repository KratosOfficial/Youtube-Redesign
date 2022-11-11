import 'package:flutter/material.dart';
import 'package:youtuberedesined/Utils/HelperClass.dart';

class Desktop_Sidebar extends StatefulWidget {
  const Desktop_Sidebar({Key? key}) : super(key: key);

  @override
  State<Desktop_Sidebar> createState() => _Desktop_SidebarState();
}

class _Desktop_SidebarState extends State<Desktop_Sidebar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    _BuildListTile(
                      image: "assets/icons/home.png",
                      text: "Home",
                    ),
                    Positioned(
                      left: 10,
                      top: 20,
                      child: Container(
                        color: Colors.red,
                        width: 4,
                        height: 60,
                      ),
                    )
                  ],
                ),
                _BuildListTile(
                  image: "assets/icons/explore.png",
                  text: "Explore",
                ),
                _BuildListTile(
                  image: "assets/icons/subscription.png",
                  text: "Subscription",
                ),
                _BuildListTile(
                  image: "assets/icons/library.png",
                  text: "Library",
                ),
                _BuildListTile(
                  image: "assets/icons/clock.png",
                  text: "History",
                ),
                _BuildListTile(
                  image: "assets/icons/yourvideos.png",
                  text: "Your Videos",
                ),
                _BuildListTile(
                  image: "assets/icons/watch.png",
                  text: "Watch Later",
                ),
                addVerticalSpace(15),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text("More from YouTube",
                      style: TextStyle(color: Colors.grey, fontSize: 18)),
                ),
                addVerticalSpace(15),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text("Gaming",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
                addVerticalSpace(15),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(500)),
                      ),
                      addHorizontalSpace(10),
                      Text("Live",
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ],
                  ),
                ),
                addVerticalSpace(15),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text("Fashion and Beauty",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
                addVerticalSpace(15),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text("Learning",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
                addVerticalSpace(15),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text("Sports",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
                addVerticalSpace(55),
                Column(
                  children: [
                    Image.asset("assets/icons/notification.png", width: 40,),
                    addVerticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              "32",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),addHorizontalSpace(10)  ,
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _BuildListTile({image, text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset(
            image,
            width: 35,
          ),
        ),
        title: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
