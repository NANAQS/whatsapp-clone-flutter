import 'package:flutter/material.dart';
import 'package:zapzap/src/style/themeData.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: primaryColor,
        actions: const [Icon(Icons.search)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: const Text(
                "Your Name",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Your Status",
                style: TextStyle(
                  color: fc,
                ),
              ),
              trailing: Icon(
                Icons.qr_code,
                color: secundaryColor,
              ),
            ),
            const Divider(
              color: Color(0x399E9E9E),
              height: 1,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text(
                    "Teste",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
