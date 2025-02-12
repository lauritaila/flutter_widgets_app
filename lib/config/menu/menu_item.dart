import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({required this.title, required this.subtitle, required this.link, required this.icon});

}

const appMenuItems = <MenuItem>[
  MenuItem(title: 'Buttons', subtitle: 'Flutter Buttons ', link: '/buttons', icon: Icons.smart_button_outlined),
  MenuItem(title: 'Cards', subtitle: 'Flutter Cards', link: '/cards', icon: Icons.credit_card),
];