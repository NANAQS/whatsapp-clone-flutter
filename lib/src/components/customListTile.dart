import 'package:flutter/material.dart';

import '../style/themeData.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget? trailing;
  const CustomListTile({
    super.key,
    required this.icon,
    required this.text,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: secundaryColor,
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: trailing,
    );
  }
}
