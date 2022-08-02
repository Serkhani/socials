import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2.0,
            color: Theme.of(context).primaryColor,
          )),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.person_outline_sharp,
          color: Theme.of(context).primaryColor,
        ),
        splashRadius: 25.0,
      ),
    );
  }
}
