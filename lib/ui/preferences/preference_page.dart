import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_switcher/ui/global/theme/app_theme.dart';
import 'package:theme_switcher/ui/global/theme/cubit/theme_cubit.dart';

class PreferencePage extends StatelessWidget {
  const PreferencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Preferences'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: AppTheme.values.length,
          itemBuilder: (context, index) {
            final itemAppTheme = AppTheme.values[index];

            return Card(
              color: appThemeData[itemAppTheme]!.primaryColor,
              child: ListTile(
                title: Text(
                  itemAppTheme.toString(),
                  style: appThemeData[itemAppTheme]!.textTheme.bodyLarge,
                ),
                onTap: () {
                  context.read<ThemeCubit>().changeTheme(itemAppTheme);
                },
              ),
            );
          },
        ));
  }
}
