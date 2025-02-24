import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({required this.title, required this.subtitle, required this.link, required this.icon});

}

const appMenuItems = <MenuItem>[
  MenuItem(title: 'Riverpod Counter', subtitle: 'Flutter Riverpod Counter', link: '/counter', icon: Icons.add_rounded),
  MenuItem(title: 'Theme Changer', subtitle: 'Flutter Theme Changer', link: '/theme-changer', icon: Icons.color_lens_rounded),
  MenuItem(title: 'Tutorial', subtitle: 'Flutter Tutorial PageView', link: '/tutorial', icon: Icons.book_rounded),
  MenuItem(title: 'Animated Container', subtitle: 'Screen Animated', link: '/animated', icon: Icons.check_box_outline_blank_rounded),
  MenuItem(title: 'Buttons', subtitle: 'Flutter Buttons ', link: '/buttons', icon: Icons.smart_button_outlined),
  MenuItem(title: 'Cards', subtitle: 'Flutter Cards', link: '/cards', icon: Icons.credit_card_outlined),
  MenuItem(title: 'Progress Indicators', subtitle: 'Generals and controlled', link: '/progress', icon: Icons.refresh_rounded),
  MenuItem(title: 'Snackbar & Dialogs', subtitle: 'Screen Alerts and Dialogs', link: '/snackbar', icon: Icons.info_outline_rounded),
  MenuItem(title: 'UI Controls + Tiles', subtitle: 'Some controls in Flutter', link: '/ui-controls', icon: Icons.check_circle_outline_rounded),
  MenuItem(title: 'Infinite Scroll and pull to refresh', subtitle: 'Flutter Infinite Scroll and pull to refresh', link: '/infiniteScroll', icon: Icons.list_alt_rounded),
];