import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socials/Utils/person.dart';
import 'package:socials/Utils/social.dart';
import 'package:socials/pages/profile.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const Person user = Person(
      name: "Nii Scooper",
      about:
          "Lorem ipsum dolor sit amet . The graphic and typographic operators know this well, in reality all the professions dealing with the universe of communication have a stable relationship with these words, but what is it? Lorem ipsum is a dummy text without any sense.It is a sequence of Latin words that, as they are positioned, do not form sentences with a complete sense, but give life to a test text useful to fill spaces that will subsequently be occupied from ad hoc texts composed by communication professionals.It is certainly the most famous placeholder text even if there are different versions distinguishable from the order in which the Latin words are repeated.Lorem ipsum contains the typefaces more in use, an aspect that allows you to have an overview of the rendering of the text in terms of font choice and font size .When referring to Lorem ipsum, different expressions are used, namely fill text , fictitious text , blind text or placeholder text : in short, its meaning can also be zero, but its usefulness is so clear as to go through the centuries and resist the ironic and modern versions that came with the arrival of the web.",
      image:
          "https://media.gettyimages.com/photos/dreadlocked-man-exhaling-smoke-picture-id959479532?k=20&m=959479532&s=612x612&w=0&h=KLmHzfB2jJY7osvU8aeFFTOAl7DmpaBbyY7QgD2VCbw=",
      socials: [
        Social(image: "", platform: "Facebook", link: "www.facebook.com"),
        Social(image: "", platform: "Twitter", link: "www.twitter.com"),
        Social(image: "", platform: "Tiktok", link: "www.tiktok.com"),
        Social(image: "", platform: "Youtube", link: "www.youtube.com"),
        Social(image: "", platform: "Facebook", link: "www.facebook.com"),
        Social(image: "", platform: "Facebook", link: "www.facebook.com"),
        Social(image: "", platform: "Facebook", link: "www.facebook.com"),
        Social(image: "", platform: "Facebook", link: "www.facebook.com"),
        Social(image: "", platform: "Facebook", link: "www.facebook.com"),
      ],
    );
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2.0,
            color: Theme.of(context).primaryColor,
          )),
      child: IconButton(
        onPressed: () {
          Get.to(const Profile(person: user));
        },
        icon: Icon(
          Icons.person_outline_sharp,
          color: Theme.of(context).primaryColor,
        ),
        splashRadius: 25.0,
      ),
    );
  }
}
