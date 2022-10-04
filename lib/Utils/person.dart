import 'package:socials/Utils/social.dart';

class Person {
  final String name;
  final String about;
  final String image;
  final List<Social> socials;
  const Person(
      {required this.name,
      required this.about,
      required this.image,
      required this.socials});
}
