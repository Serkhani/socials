import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socials/pages/homepage.dart';

class ScanNotification extends StatelessWidget {
  const ScanNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
            const MyHomePage(
              heading: "Scans",
              ishistoryPage: true,
            ),
            popGesture: false,
            transition: Transition.leftToRightWithFade);
      },
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: const [
          CircleAvatar(
            maxRadius: 13.0,
          ),
          Positioned(
            height: 12.0,
            child: CircleAvatar(
              backgroundColor: Colors.redAccent,
              child: Text(
                "3",
                style: TextStyle(fontSize: 10.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
