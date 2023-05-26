import 'package:flutter/material.dart';
import 'package:zapzap/src/view/home_screen.dart';
import 'package:zapzap/src/view/status_screen.dart';

import '../style/themeData.dart';
import '../view/calls_screen.dart';
import '../view/community_screen.dart';

class HeaderDefaultWidget extends StatelessWidget {
  const HeaderDefaultWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: bg,
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text('zapzap', style: fontColor),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: fc,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: fc,
              ),
            ),
            PopupMenuTheme(
              data: const PopupMenuThemeData(
                color: Color.fromARGB(255, 34, 49, 61),
                textStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: PopupMenuButton(
                icon: Icon(
                  Icons.more_vert,
                  color: fc,
                ),
                constraints: const BoxConstraints.tightForFinite(
                  width: 150,
                ),
                onSelected: (value) {
                  switch (value) {
                    case 6:
                      Navigator.of(context).pushNamed("/settings");
                      break;
                    default:
                  }
                },
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(value: 0, child: Text("New Group")),
                    const PopupMenuItem(value: 1, child: Text("New broadcast")),
                    const PopupMenuItem(
                        value: 2, child: Text("Linked devices")),
                    const PopupMenuItem(
                        value: 3, child: Text("Starred messages")),
                    const PopupMenuItem(
                        value: 4, child: Text("Discover businesses")),
                    const PopupMenuItem(value: 5, child: Text("Payment")),
                    const PopupMenuItem(value: 6, child: Text("Settings")),
                  ];
                },
              ),
            )
          ],
          bottom: TabBar(
            indicatorColor: secundaryColor,
            labelPadding: const EdgeInsets.symmetric(horizontal: 10),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.groups,
                  color: fc,
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Chats",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: fc,
                      ),
                    ),
                    Badge.count(
                      count: 14,
                      backgroundColor: secundaryColor,
                      textColor: bg,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Status",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: fc,
                      ),
                    ),
                    Badge(
                      alignment: Alignment.center,
                      backgroundColor: secundaryColor,
                      textColor: bg,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Calls",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: fc,
                      ),
                    ),
                    Badge.count(
                      count: 1,
                      backgroundColor: secundaryColor,
                      textColor: bg,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CommunityScreen(),
            HomeScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
