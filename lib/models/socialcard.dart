import 'package:flutter/material.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({Key? key}) : super(key: key);

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  ScrollController detailScrollCon = ScrollController();
  double height = 150.0;
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: PhysicalModel(
        elevation: 5.0,
        color: Colors.grey,
        shadowColor: Colors.lightBlueAccent.withOpacity(0.65),
        borderRadius: BorderRadius.circular(20.0),
        child: AnimatedContainer(
          height: isExpanded ? 430.0 : height,
          width: 20.0,
          duration: const Duration(milliseconds: 500),
          child: ExpansionTile(
            onExpansionChanged: (value) {
              setState(() {
                isExpanded = value;
              });
            },
            title: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 8.0, right: 16.0, bottom: 8.0),
                  child: CircleAvatar(
                    radius: 35.0,
                  ),
                ),
                Text(
                  "Samuel Mintah",
                  softWrap: false,
                ),
              ],
            ),
            // subtitle:
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("About: "),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: isExpanded ? 150.0 : 1.0,
                  child: ListView.builder(
                    // shrinkWrap: true,
                    controller: detailScrollCon,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ExpansionTile(
                          leading: const CircleAvatar(),
                          title: const Text("Facebook"),
                          expandedAlignment: Alignment.center,
                          children: [
                            ListTile(
                              title: const Text(
                                "www.facebook.com",
                                softWrap: false,
                                overflow: TextOverflow.fade,
                                textAlign: TextAlign.center,
                              ),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.delete,
                                ),
                                color: Colors.redAccent.withOpacity(0.45),
                              ),
                            )
                          ]);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
