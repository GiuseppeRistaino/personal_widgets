import 'package:flutter/material.dart';


class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialIcon(Icons.g_mobiledata, Colors.red),
        const SizedBox(width: 20),
        _socialIcon(Icons.facebook, Colors.blue),
        const SizedBox(width: 20),
        _socialIcon(Icons.alternate_email, Colors.lightBlue),
      ],
    );
  }
}

Widget _socialIcon(IconData icon, Color color) {
  return CircleAvatar(
    radius: 22,
    backgroundColor: Colors.white,
    child: Icon(
      icon,
      color: color,
      size: 28,
    ),
  );
}