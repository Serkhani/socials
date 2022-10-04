import 'package:flutter/material.dart';
import 'package:socials/Utils/social.dart';
import 'package:socials/models/add_social_dialog.dart';

class AboutSocials extends StatelessWidget {
  const AboutSocials({Key? key, required this.socials}) : super(key: key);
  final List<Social> socials;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12.0)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Socials",
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const AddSocialDialog();
                        },
                      );
                    },
                    splashRadius: 12.0,
                    icon: Icon(
                      Icons.add_circle_sharp,
                      color:
                          Theme.of(context).primaryTextTheme.titleMedium?.color,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300.0,
              child: ListView.builder(
                itemCount: socials.length,
                itemBuilder: (context, index) {
                  return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      child: ListTile(
                        leading: CircleAvatar(
                          foregroundImage: AssetImage(
                              'assets/icons/${socials[index].platform.toLowerCase()}.jpg'),
                        ),
                        title: Text(socials[index].platform),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
