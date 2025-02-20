import 'package:flutter/material.dart';

enum Transportation {
  car,
  bicycle,
  plane,
  boat,
}

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("UI Controls")),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloperMode = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text("Developer Mode"),
            subtitle: const Text("Enable developer features"),
            value: isDeveloperMode,
            onChanged: (value) {
              setState(() {
                isDeveloperMode = !isDeveloperMode;
              });
            }),
        ExpansionTile(
          title: Text("Transportation"),
          initiallyExpanded: false,
          subtitle: Text("Choose your transportation"),
          children: [
            RadioListTile(
              title: Text("By Car"),
              subtitle: Text("Choose this option"),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.car;
                });
              },
            ),
            RadioListTile(
              title: Text("By Boat"),
              subtitle: Text("Choose this option"),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.boat;
                });
              },
            ),
            RadioListTile(
              title: Text("By Bicycle"),
              subtitle: Text("Choose this option"),
              value: Transportation.bicycle,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.bicycle;
                });
              },
            ),
            RadioListTile(
              title: Text("By Plane"),
              subtitle: Text("Choose this option"),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.plane;
                });
              },
            )
          ],
        ),
        
        CheckboxListTile(
          value: wantsBreakfast,
          title: const Text("Breakfast"),
          subtitle: const Text("Do you want breakfast?"),
          onChanged: (value) {
            setState(() {
              wantsBreakfast = !wantsBreakfast;
            });
          },
        ),
        CheckboxListTile(
          value: wantsLunch,
          title: const Text("Lunch"),
          subtitle: const Text("Do you want lunch?"),
          onChanged: (value) {
            setState(() {
              wantsLunch = !wantsLunch;
            });
          },
        ),
        CheckboxListTile(
          value: wantsDinner,
          title: const Text("Dinner"),
          subtitle: const Text("Do you want dinner?"),
          onChanged: (value) {
            setState(() {
              wantsDinner = !wantsDinner;
            });
          },
        ),
      ],
    );
  }
}
