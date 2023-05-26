import 'package:flutter/material.dart';
import 'package:zapzap/src/style/themeData.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [];
          },
          body: ListView(
            children: [
              ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  color: const Color(0xFF1A2730),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: fc,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.group, color: Colors.white),
                        ),
                        title: Text(
                          "Community $index",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Divider(
                        color: Color(0x719E9E9E),
                        height: 3,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        title: Text(
                          "Group $index",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: fc,
                        ),
                        title: Text(
                          'View all',
                          style: TextStyle(
                            color: fc,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
