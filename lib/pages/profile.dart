import 'package:flutter/material.dart';
import 'package:socials/Utils/person.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.person}) : super(key: key);
  final Person person;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(person.name)),
      body: Hero(
        tag: person.name,
        child: Center(
          child: CircleAvatar(
            foregroundImage: NetworkImage(person.image),
            child: const Text("NA"),
          ),
        ),
      ),
    );
  }
}
