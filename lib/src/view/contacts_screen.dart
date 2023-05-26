import 'package:flutter/material.dart';
import 'package:zapzap/src/style/themeData.dart';

import '../components/customListTile.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: Column(
          children: [
            const Text(
              'Select contact',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              '30 contacts',
              style: TextStyle(
                color: fc,
                fontSize: 15,
              ),
            ),
          ],
        ),
        actions: [
          const Icon(Icons.search),
          PopupMenuTheme(
            data: const PopupMenuThemeData(
              color: Color.fromARGB(255, 34, 49, 61),
              textStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            child: PopupMenuButton(
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text("Invite a friend")),
                  const PopupMenuItem(child: Text("Contacts")),
                  const PopupMenuItem(child: Text("Refresh")),
                  const PopupMenuItem(child: Text("Help")),
                ];
              },
            ),
          )
        ],
        backgroundColor: primaryColor,
      ),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [];
          },
          body: ListView(
            shrinkWrap: true,
            children: [
              const CustomListTile(
                icon: Icons.group,
                text: 'New group',
              ),
              CustomListTile(
                icon: Icons.person_add,
                text: 'New contact',
                trailing: Icon(
                  Icons.qr_code,
                  color: fc,
                ),
              ),
              const CustomListTile(
                icon: Icons.groups,
                text: 'New community',
              ),
              const CustomTextContact(
                text: "Discover",
              ),
              const CustomListTile(
                icon: Icons.add_business,
                text: 'Businesses',
              ),
              const CustomTextContact(
                text: "Contacts on Whatsapp",
              ),
              //
            ],
          )),
    );
  }
}

class CustomTextContact extends StatelessWidget {
  final String text;
  const CustomTextContact({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: fc,
        ),
      ),
    );
  }
}
