import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/config/menu/menu_item.dart';
import 'package:flutter_widgets_app/presentation/widgets/side_menu.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {

  static const name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("WidgetLab"),
      ),
      body: _HomeView(),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) { 
        final menuItem = appMenuItems[index];
        
        return _CustomListTile(menuItem: menuItem);

      } 
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: (){
        context.push(menuItem.link);
        // context.go(menuItem.link);
      }
    );
  }
}