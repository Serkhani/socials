import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socials/Utils/person.dart';
import 'package:socials/pages/profile.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({Key? key, required this.ifSwitch, required this.person})
      : super(key: key);
  final bool ifSwitch;
  final Person person;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: () => Get.to(() => Profile(person: person)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: ifSwitch
                  ? const EdgeInsets.only(right: 8.0)
                  : const EdgeInsets.only(left: 8.0),
              child: PhysicalModel(
                elevation: 5.0,
                color: Colors.white,
                shadowColor: Colors.lightBlueAccent.withOpacity(0.65),
                borderRadius: BorderRadius.circular(20.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    leading: ifSwitch
                        ? const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          )
                        : null,
                    subtitle: Padding(
                      padding: ifSwitch
                          ? const EdgeInsets.only(right: 65.0)
                          : const EdgeInsets.only(left: 65.0),
                      child: Text(
                        person.about,
                        maxLines: 3,
                        overflow: TextOverflow.fade,
                        style: Theme.of(context).primaryTextTheme.titleSmall,
                      ),
                    ),
                    title: Padding(
                      padding: ifSwitch
                          ? const EdgeInsets.symmetric(
                              vertical: 2.0,
                            )
                          : const EdgeInsets.symmetric(
                              vertical: 2.0,
                              horizontal: 65.0,
                            ),
                      child: Text(
                        person.name,
                        softWrap: false,
                      ),
                    ),
                    trailing: ifSwitch
                        ? null
                        : const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment:
                  ifSwitch ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                Hero(
                  tag: person.name,
                  child: CircleAvatar(
                    radius: 40.0,
                    foregroundImage: NetworkImage(person.image),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
