import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);
  final List<Item> familyMembers = const [
    Item(
      sound: 'father.wav',
      jpName: 'Chichioya',
      enName: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    Item(
      sound: 'daughter.wav',
      jpName: 'Musume',
      enName: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    Item(
      sound: 'grand_father.wav',
      jpName: 'Ojīsan',
      enName: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    Item(
      sound: 'mother.wav',
      jpName: 'Hahaoya',
      enName: 'mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    Item(
      sound: 'grand_mother.wav',
      jpName: 'Sobo',
      enName: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    Item(
      sound: 'older_bother.wav',
      jpName: 'Nīsan',
      enName: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    Item(
      sound: 'older_sister.wav',
      jpName: 'Ane',
      enName: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    Item(
      sound: 'son.wav',
      jpName: 'Musuko',
      enName: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    Item(
      sound: 'younger_brohter.wav',
      jpName: 'otōto',
      enName: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    Item(
      sound: 'younger_sister.wav',
      jpName: 'Imōto',
      enName: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10.0),
        itemCount: familyMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(
            item: familyMembers[index],
            itemType: 'family_members',
            color: const Color(0xff558B37),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 10.0,
        ),
      ),
    );
  }
}
