import 'package:flutter/material.dart';
import 'package:youtuberedesined/Utils/HelperClass.dart';

class videos extends StatefulWidget {
  const videos({Key? key}) : super(key: key);

  @override
  State<videos> createState() => _videosState();
}

class _videosState extends State<videos> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  "assets/images/1.jpg",
                  fit: BoxFit.cover,
                )),
            Positioned(
              top: 10,
              left: 10,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 15,
                        ),
                        addHorizontalSpace(5),
                        Text("ADT UX"),
                        addHorizontalSpace(5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text("10:56"),
              ),
            ),
            Positioned(bottom: 20, child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black. withOpacity(0.4),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("How to make a website in 10 minutes",style: TextStyle(color: Colors.white),),
                  ),
                  addVerticalSpace(5),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("1.2M views",style: TextStyle(color: Colors.white),),
                        addHorizontalSpace(25),
                        Text("2 days ago",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  )
                ],
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
