import 'package:flutter/material.dart';
import 'package:socials/models/inputfield.dart';

class AddSocialDialog extends StatelessWidget {
  const AddSocialDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetAnimationCurve: Curves.easeOutSine,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.check,
                    color: Colors.grey,
                  ))
            ],
          ),
          // Dropdownmenu for known social media platform
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: InputField(
              maxLines: 1,
              label: Text("Other"),
              hintText: "Youtube",
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: InputField(
              maxLines: 1,
              label: Text("Link"),
              hintText: "https://www.youtube.com/user/mrbeast6000",
            ),
          ),
        ],
      ),
    );
  }
}
