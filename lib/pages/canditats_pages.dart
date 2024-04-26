import 'package:dernier_tp/models/person.dart';
import 'package:flutter/material.dart';
 


class CandidatsPage extends StatelessWidget {
  final List<Person> friends;

  CandidatsPage({super.key, required this.friends});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Friends"),
      ),

      body: ListView(
        children: friends.map((person) => ListTile(
          
          title: Text("${person.name} ${person.surname}"),
          subtitle: Text("Bonjour comment vas-tu?"),
          leading: CircleAvatar(),
          onTap: () => Navigator.pop(context, person),

      )).toList(),
    )
    );
  }
}
