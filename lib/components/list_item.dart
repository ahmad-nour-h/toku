import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:untitledtoku/main.dart';
import '../models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.item,
    required this.color,
    required this.itemType,
  }) : super(key: key);
  final Item item;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(
            color: Color(0xff46322B),
            width: 3.5,
          )),
      leading: item.image == null
          ? null
          : Container(
              height: double.infinity,
             decoration: BoxDecoration(
               color: const Color(0xffFEF6DB),
               borderRadius: BorderRadius.circular(5.0)
             ),
              child: Image.asset(
                item.image!,
                height: double.infinity,
              ),
            ),
      title: Text(
        item.jpName,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        item.enName,
        style: const TextStyle(color: Colors.white),
      ),
      tileColor: color,
      trailing: IconButton(
        onPressed: () {
          // print('sounds/itemType/${item.sound}');
          // print(item.sound);
          audioPlayer.play(AssetSource('sounds/$itemType/${item.sound}'));
        },
        icon: const Icon(
          Icons.play_arrow,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
  }
}
