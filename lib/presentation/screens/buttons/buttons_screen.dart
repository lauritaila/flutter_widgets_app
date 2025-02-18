import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons")),  
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>context.pop(),
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center ,
          children: [
            //Elevated Button
            ElevatedButton(onPressed: () {}, child: const Text("Elevated")),
            ElevatedButton(onPressed: null, child: const Text("Elevated Disable")),
            ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.access_alarm_rounded), label: Text("Elevated Icon")), // con icon
            //Filled Button
            FilledButton(onPressed: (){}, child: Text("Filled")),
            FilledButton(onPressed: null, child: Text("Filled Disable")),
            FilledButton.icon(onPressed: (){}, icon: Icon(Icons.access_alarm_rounded), label: Text("Filled Icon")),
            //Outlined Button
            OutlinedButton(onPressed: (){}, child: Text("Outlined")),
            OutlinedButton(onPressed: null, child: Text("Outlined Disable")),
            OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.access_alarm_rounded), label: Text("Outlined Icon")),
            //Text Button
            TextButton(onPressed: (){}, child: Text("Text")),
            TextButton(onPressed: null, child: Text("Text Disable")),
            TextButton.icon(onPressed: (){}, icon: Icon(Icons.access_alarm_rounded), label: Text("Text Icon")),
            //Icon Button
            IconButton(onPressed: (){}, icon: Icon(Icons.access_alarm_rounded)),
            IconButton(onPressed: null, icon: Icon(Icons.access_alarm_rounded)),
            IconButton(onPressed: null, icon: Icon(Icons.access_alarm_rounded), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(colors.primary), iconColor: WidgetStatePropertyAll(colors.onPrimary))),
            //Custom Button
            _CustomButton(),
          ]
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton();
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Custom", style: TextStyle(color: colors.onPrimary)),
          ),
        ),
      ),
    );
  }
}