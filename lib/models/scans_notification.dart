import 'package:flutter/material.dart';

class ScanNotification extends StatelessWidget {
  const ScanNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
