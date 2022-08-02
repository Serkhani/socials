import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      padding: EdgeInsets.symmetric(horizontal: 6.0),
      width: 20.0,
      child: PhysicalModel(
        elevation: 8.0,
        // color: Colors.grey,
        // color: Theme.of(context).primaryColor,
        color: Colors.transparent,
        shadowColor: Colors.lightBlueAccent.withOpacity(0.65),
        borderRadius: BorderRadius.circular(20.0),
        child: Text("hi"),
      ),
    );
  }
}
