import 'package:flutter/material.dart';
import 'package:untitledtoku/main.dart';
import 'package:untitledtoku/screens/about_us.dart';
import 'package:untitledtoku/screens/phrase_page.dart';
import '../components/category_item.dart';
import 'color_page.dart';
import 'family_members_page.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),

        physics: const BouncingScrollPhysics(),
        
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xffEF9235),
            onTap: () {
              navigatorTo(context, NumbersPage());
            },
          ),
          Category(
            text: 'Family Members',
            color: const Color(0xff558B37),
            onTap: () {
              navigatorTo(context, FamilyMembersPage());
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff79359F),
            onTap: () {
              navigatorTo(context, ColorsPage());
            },
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xff50ADC7),
            onTap: () {
              navigatorTo(context, PhrasesPage());
            },
          ),
          Category(
            text: 'About Us',
            color: const Color(0xffc03125),
            onTap: () {
              navigatorTo(context, AboutUs());
            },
          ),
        ],
      ),
    );
  }
}
