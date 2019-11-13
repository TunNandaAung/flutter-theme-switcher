import 'package:flutter/material.dart';
import 'package:theme_switcher/preferenes.dart';
import 'package:theme_switcher/ui/preferences/preference_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigate to the PreferencePage
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PreferencePage(),
              ));
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Text(
            Prefer.themeIndexPref.toString(),
            style: Theme.of(context).textTheme.display1,
          ),
        ),
      ),
    );
  }
}
