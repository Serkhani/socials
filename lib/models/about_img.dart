import 'package:flutter/material.dart';
import 'package:socials/Utils/person.dart';

class AboutImg extends StatelessWidget {
  const AboutImg({Key? key, required this.person}) : super(key: key);
  final Person person;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: person.name,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 15.0,
                  blurRadius: 15.0,
                )
              ],
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(30.0)),
              image: DecorationImage(
                  image: NetworkImage(person.image), fit: BoxFit.cover),
            ),
          ),
        ),
        SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.cancel_sharp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
