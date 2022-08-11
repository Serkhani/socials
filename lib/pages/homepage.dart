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
      Person(
          name: "Mariam Jones",
          about: "KY",
          image:
              "https://img.freepik.com/free-photo/side-view-sad-black-man_23-2148734038.jpg?size=338&ext=jpg&ga=GA1.2.2142933524.1660214763",
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
          name: "Alyson Howell",
          about: "Alot of things",
          image:
              "https://img.freepik.com/free-photo/beautiful-young-woman-with-acne_23-2148982542.jpg?size=626&ext=jpg&ga=GA1.2.2142933524.1660214763",
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
          name: "Abraham Moon",
          about: "Alot of things",
          image:
              "https://img.freepik.com/free-photo/black-model-posing_23-2148171726.jpg?size=338&ext=jpg&ga=GA1.2.2142933524.1660214763",
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
          name: "Junior Petersen",
          about: "Alot of things",
          image:
              "https://img.freepik.com/free-photo/beautiful-young-woman-with-acne_23-2148982542.jpg?size=626&ext=jpg&ga=GA1.2.2142933524.1660214763",
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
          name: "Darrell Burns",
          about: "Alot of things",
          image:
              "https://img.freepik.com/free-photo/black-model-posing_23-2148171736.jpg?size=338&ext=jpg&ga=GA1.2.2142933524.1660214763",
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
          name: "Jordyn Mays",
          about: "Alot of things",
          image:
              "https://img.freepik.com/free-photo/portrait-young-man-isolated_23-2149158664.jpg?size=338&ext=jpg&ga=GA1.2.2142933524.1660214763",
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
          name: "Sloane Mcfarland",
          about: "Alot of things",
          image:
              "https://img.freepik.com/free-photo/african-woman-studio-white-wall-woman-white-shirt_1157-47613.jpg?size=626&ext=jpg&ga=GA1.2.2142933524.1660214763",
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
          name: "Phillip Acevedo",
          about: "Just your average guy",
          image:
              "https://img.freepik.com/free-photo/pretty-smiling-joyfully-female-with-fair-hair-dressed-casually-looking-with-satisfaction_176420-15187.jpg?size=626&ext=jpg&ga=GA1.2.2142933524.1660214763",
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
          name: "Ezekiel Stout",
          about: "We move",
          image:
              "https://img.freepik.com/free-photo/worldface-side-view-african-man_53876-23488.jpg?size=626&ext=jpg&ga=GA1.2.2142933524.1660214763",
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
          name: "Pedro Holloway",
          about: "We go again",
          image:
              "https://img.freepik.com/free-photo/young-attractive-woman-smiling-feeling-healthy-hair-flying-wind_176420-37515.jpg?size=626&ext=jpg&ga=GA1.2.2142933524.1660214763",
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
                  return SocialCard(
                    person: people[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10.0);
                },
                itemCount: people.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
