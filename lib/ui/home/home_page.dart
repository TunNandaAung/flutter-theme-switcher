import 'package:flutter/material.dart';
import 'package:theme_switcher/preferenes.dart';
import 'package:theme_switcher/ui/preferences/preference_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the PreferencePage
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PreferencePage(),
              ));
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          Prefer.themeIndexPref.toString(),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
