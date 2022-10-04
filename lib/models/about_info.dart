import 'package:flutter/material.dart';
import 'package:socials/Utils/person.dart';

class AboutInfo extends StatelessWidget {
  const AboutInfo({Key? key, required this.person}) : super(key: key);
  final Person person;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(person.name,
              style: Theme.of(context).primaryTextTheme.titleLarge),
          Text.rich(
            TextSpan(
                children: [
                  TextSpan(
                      text: person.about,
                      style: Theme.of(context).primaryTextTheme.titleSmall)
                ],
                text: "Bio: ",
                style: Theme.of(context).primaryTextTheme.titleMedium),
          ),
        ],
      ),
    );
  }
}
