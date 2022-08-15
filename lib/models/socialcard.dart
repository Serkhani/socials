import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socials/Utils/person.dart';
import 'package:socials/pages/profile.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({Key? key, required this.person}) : super(key: key);
  final Person person;
  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: () => Get.to(() => Profile(person: widget.person)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: PhysicalModel(
                elevation: 5.0,
                color: Colors.white,
                shadowColor: Colors.lightBlueAccent.withOpacity(0.65),
                borderRadius: BorderRadius.circular(20.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70.0,
                  child: ListTile(
                    title: Align(
                      alignment: Alignment.center,
                      child: Text(
                        widget.person.name,
                        softWrap: false,
                      ),
                    ),
                    trailing: const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Hero(
                  tag: widget.person.name,
                  child: CircleAvatar(
                    radius: 40.0,
                    foregroundImage: NetworkImage(widget.person.image),
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
