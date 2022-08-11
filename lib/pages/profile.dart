import 'package:flutter/material.dart';
import 'package:socials/Utils/person.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.person}) : super(key: key);
  final Person person;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Hero(
          tag: person.name,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Image.network(
              person.image,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
