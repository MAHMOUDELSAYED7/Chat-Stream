import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../widget/custom_chat_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darkGrey,
      appBar: AppBar(
        elevation: BorderSide.strokeAlignOutside,
        backgroundColor: MyColors.purple,
        shadowColor: MyColors.darkGrey,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
        title: const Text("Hambola",
            style:
                TextStyle(fontWeight: FontWeight.w500, color: MyColors.black)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: MyColors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/setting");
              },
              icon: const Icon(
                Icons.settings,
                color: MyColors.black,
              )),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            ChatCard(
                onTap: () {},
                circleAvatar: "M",
                name: "Mahmoud",
                lastMessage: "hello every boding",
                time: "7.56 AM"),
            ChatCard(
                onTap: () {},
                circleAvatar: "M",
                name: "Mahmoud",
                lastMessage: "hello every boding",
                time: "7.56 AM"),
            ChatCard( 
                onTap: () {},
                circleAvatar: "M",
                name: "Mahmoud",
                lastMessage: "hello every boding",
                time: "7.56 AM"),
          ],
        ),
      ),
    );
  }
}
