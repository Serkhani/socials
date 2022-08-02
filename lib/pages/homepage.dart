import 'package:flutter/material.dart';
import 'package:socials/models/profile_icon.dart';
import 'package:socials/models/scans_notification.dart';
import 'package:socials/models/searchbar.dart';
import 'package:socials/models/socialcard.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              children: const [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SearchBar(),
                )),
                ScanNotification(),
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
