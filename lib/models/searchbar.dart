import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socials/Utils/person.dart';
import 'package:socials/models/socialcard.dart';
import 'package:socials/pages/profile.dart';

class SearchBar extends StatelessWidget {
  final List<Person> people;
  const SearchBar({Key? key, required this.people}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSearch(
          context: context,
          delegate: Search(people: people),
        );
      },
      child: Container(
        height: 30.0,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: const Center(child: Text("Search")),
      ),
    );
  }
}

class Search extends SearchDelegate {
  final List<Person> people;
  Search({required this.people});
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) {
        return people[index].name.toLowerCase().contains(query.toLowerCase())
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: SocialCard(person: people[index]),
              )
            : Container();
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) {
        return people[index].name.toLowerCase().contains(query.toLowerCase())
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                    onTap: () {
                      close(context, null);
                      // Get.to(ChatScreen(chat: people[index]),
                      //
                      Get.to(
                        Profile(person: people[index]),
                        curve: Curves.decelerate,
                      );
                    },
                    leading: CircleAvatar(
                        foregroundImage: NetworkImage(people[index].image)),
                    title: Text(people[index].name,
                        style: Theme.of(context).textTheme.titleMedium)))
            : Container();
      },
    );
  }
}
