import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = "snackbar_screen";
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('You are seening a snackbar'), 
        action: SnackBarAction(
          label: 'Ok!', 
          onPressed: (){},
        ),
        duration: Duration(seconds: 2),
      )
    );
  }

  void openDialog(BuildContext context){
    showDialog(
      context: context, 
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: const Text("Are you sure?"),
      content: const Text("This action cannot be undone!"),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
        FilledButton(onPressed: () => Navigator.pop(context), child: const Text('Yes')),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Snackbars and Dialogs")),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context), 
        label: const Text('Snackbar'), 
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            FilledButton.tonal(onPressed: (){
              showAboutDialog(context: context, children: [
                Text("Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase."),
              ]);
            }, child: Text('Licenses')),
            FilledButton.tonal(onPressed: () => openDialog(context), child: Text('Dialog')),
          ]),
      ),
    );  
  }
}