import 'package:flutter/material.dart';
import 'package:socials/Utils/person.dart';
import 'package:socials/Utils/social.dart';
import 'package:socials/models/profile_icon.dart';
import 'package:socials/models/scans_notification.dart';
import 'package:socials/models/searchbar.dart';
import 'package:socials/models/socialcard.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Person> people = const [
      Person(name: "Samuel Mintah", about: "KY", image: "", socials: <Social>[
        Social(image: "", platform: "Facebook", link: "www.facebook.com"),
        Social(image: "", platform: "Twitter", link: "www.twitter.com"),
        Social(image: "", platform: "Tiktok", link: "www.tiktok.com"),
        Social(image: "", platform: "Youtube", link: "www.youtube.com"),
        Social(image: "", platform: "Facebook", link: "www.facebook.com"),
        Social(image: "", platform: "Facebook", link: "www.facebook.com"),
        Social(image: "", platform: "Facebook", link: "www.facebook.com"),
        Social(image: "", platform: "Facebook", link: "www.facebook.com"),
        Social(image: "", platform: "Facebook", link: "www.facebook.com"),
      ]),
      Person(
          name: "Simon Mintah",
          about: "Alot of things",
          image: "",
          socials: <Social>[
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Twitter", link: "www.twitter.com"),
            Social(image: "", platform: "Tiktok", link: "www.tiktok.com"),
            Social(image: "", platform: "Youtube", link: "www.youtube.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
          ]),
      Person(
          name: "Samuel Mensah",
          about: "Just your average guy",
          image: "",
          socials: <Social>[
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Twitter", link: "www.twitter.com"),
            Social(image: "", platform: "Tiktok", link: "www.tiktok.com"),
            Social(image: "", platform: "Youtube", link: "www.youtube.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
          ]),
      Person(
          name: "Abubakar Mintah",
          about: "We move",
          image: "",
          socials: <Social>[
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Twitter", link: "www.twitter.com"),
            Social(image: "", platform: "Tiktok", link: "www.tiktok.com"),
            Social(image: "", platform: "Youtube", link: "www.youtube.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
          ]),
      Person(
          name: "John Mintah",
          about: "We go again",
          image: "",
          socials: <Social>[
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Twitter", link: "www.twitter.com"),
            Social(image: "", platform: "Tiktok", link: "www.tiktok.com"),
            Social(image: "", platform: "Youtube", link: "www.youtube.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
            Social(image: "", platform: "Facebook", link: "www.facebook.com"),
          ]),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.0,
          title: Text(
            "Socials",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          actions: const [
            Padding(padding: EdgeInsets.all(8.0), child: ProfileIcon()),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SearchBar(
                    people: people,
                  ),
                )),
                const ScanNotification(),
              ],
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const SocialCard();
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10.0);
                },
                itemCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
