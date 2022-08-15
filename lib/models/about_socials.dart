import 'package:flutter/material.dart';
import 'package:socials/Utils/social.dart';

class AboutSocials extends StatelessWidget {
  const AboutSocials({Key? key, required this.socials}) : super(key: key);
  final List<Social> socials;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                onPressed: () {},
                splashRadius: 12.0,
                icon: Icon(
                  Icons.add_circle_sharp,
                  color: Theme.of(context).primaryTextTheme.titleMedium?.color,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200.0,
          child: ListView.builder(
            itemCount: socials.length,
            itemBuilder: (context, index) {
              return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: ListTile(title: Text(socials[index].platform)));
            },
          ),
        )
      ],
    );
  }
}
