import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/config/menu/menu_item.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey; 
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawrIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35.0;

    return NavigationDrawer(
        selectedIndex: navDrawrIndex,
      onDestinationSelected: (value){
        setState(() {
          navDrawrIndex = value;
          });
        final MenuItem menuItem = appMenuItems[value];
        context.push(menuItem.link);
        widget.scaffoldKey.currentState?.closeDrawer();
        },
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 10, 10),
            child: Text('Main Menu'),
          ),
          ...appMenuItems
              .sublist(0, 3)
              .map((menuItem) => NavigationDrawerDestination(
                    icon: Icon(menuItem.icon),
                    label: Text(menuItem.title),
                  )),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(28, 10, 10, 10),
            child: Text('More Options'),
          ),
          ...appMenuItems
              .sublist(3)
              .map((menuItem) => NavigationDrawerDestination(
                    icon: Icon(menuItem.icon),
                    label: Text(menuItem.title),
                  )),
        ]);
  }
}
