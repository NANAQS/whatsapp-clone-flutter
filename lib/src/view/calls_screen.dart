import 'package:flutter/material.dart';
import 'package:zapzap/src/style/themeData.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: secundaryColor,
        onPressed: () {},
        child: const Icon(Icons.add_ic_call_rounded),
      ),
      backgroundColor: bg,
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: secundaryColor,
              child: Transform.rotate(
                child: const Icon(Icons.link),
                angle: -10,
              ),
            ),
            title: const Text(
              "Create call link",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              "Share a link for you Whatsapp call",
              style: TextStyle(
                color: fc,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Recent",
              style: TextStyle(
                color: fc,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    "Nome $index",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    (index % 2) == 0 ? Icons.videocam : Icons.call,
                    color: secundaryColor,
                  ),
                  leading: Container(
                    padding: const EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: secundaryColor,
                    ),
                    child: CircleAvatar(
                      backgroundColor: primaryColor,
                      child: const Icon(Icons.person),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      const Icon(
                        Icons.call_received,
                        color: Color(0xFF00FF08),
                        size: 15,
                      ),
                      Text(
                        "Today, 08:33",
                        style: TextStyle(
                          color: fc,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
