import 'package:flutter/material.dart';
import 'package:socials/Utils/person.dart';
import 'package:socials/models/about_img.dart';
import 'package:socials/models/about_info.dart';
import 'package:socials/models/about_socials.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.person}) : super(key: key);
  final Person person;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AboutImg(person: person),
            AboutInfo(person: person),
            AboutSocials(socials: person.socials)
          ],
        ),
      ),
    );
  }
}
